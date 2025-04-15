WITH infra_ids AS (
  SELECT 
    id, legalname, legalshortname,
    (SELECT value FROM UNNEST(pid) WHERE scheme="ROR") AS ror
  FROM `academic-observatory.openaire.organization20230817`
  WHERE lower(legalname) LIKE '%rxiv%' OR lower(legalshortname) LIKE '%rxiv%'
    OR lower(legalname) LIKE '%coar e%' OR lower(legalshortname) LIKE '%coar e%'
    OR lower(legalname) LIKE '%creative commons%' OR lower(legalshortname) LIKE '%creative commons%'
    OR lower(legalname) LIKE '%crossref%' OR lower(legalshortname) LIKE '%crossref%'
    OR lower(legalname) LIKE '%datacite%' OR lower(legalshortname) LIKE '%datacite%'
    OR lower(legalname) LIKE '%dataverse%' OR lower(legalshortname) LIKE '%dataverse%'
    OR lower(legalname) LIKE '%open access book%' OR lower(legalshortname) LIKE 'doab'
    OR lower(legalname) LIKE '%directory of open access journal%' OR lower(legalshortname) LIKE '%doaj%'
    OR lower(legalname) LIKE '%dryad%' OR lower(legalshortname) LIKE '%dryad%'
    OR lower(websiteurl) LIKE '%erudit.org%'
    OR lower(legalname) LIKE '%europe pmc%' OR lower(legalshortname) LIKE '%europe pmc%'
    OR lower(legalname) LIKE '%figshare%' OR lower(legalshortname) LIKE '%figshare%'
    OR lower(legalname) LIKE '%humanities commons%' OR lower(legalshortname) LIKE '%humanities commons%'
    OR lower(legalname) LIKE '%igsn' OR lower(legalshortname) LIKE '%igsn'
    OR lower(legalname) LIKE '%la referencia%' OR lower(legalshortname) LIKE '%la referencia%'
    OR lower(legalname) LIKE '%mendeley %' OR lower(legalshortname) LIKE '%mendeley%'
    OR lower(legalname) LIKE '%open%archive%' OR lower(legalshortname) LIKE '%oai%pmh%' OR lower(websiteurl) LIKE '%openarchive%'
    OR lower(legalname) LIKE '%oapen%' OR lower(legalshortname) LIKE '%oapen%' OR lower(websiteurl) LIKE '%oapen%'
    OR lower(legalname) LIKE '%public knowledge project%' OR lower(legalshortname) LIKE 'pkp'
    OR lower(legalname) LIKE '%impact%story%' OR lower(legalshortname) LIKE '%impact%story%'
    OR lower(legalname) LIKE '%opencitations%' OR lower(legalshortname) LIKE '%opencitations%'
    OR lower(legalname) LIKE '%openedition%' OR lower(legalshortname) LIKE '%openedition%'
    OR lower(legalname) LIKE '%orcid%' OR lower(legalshortname) LIKE '%orcid%'
    OR lower(legalname) LIKE '%open science framework%'
    OR lower(legalname) LIKE '%peer community in%' OR lower(legalshortname) LIKE '%peer community in%'
    OR lower(legalname) LIKE '%prereview%' OR lower(legalshortname) LIKE '%prereview%'
    OR lower(legalname) LIKE '%pubpub%' OR lower(legalshortname) LIKE '%pubpub%'
    OR lower(websiteurl) LIKE '%ror.org%'
    OR lower(legalname) LIKE '%scielo%' OR lower(legalshortname) LIKE '%scielo%'
    OR lower(websiteurl) LIKE '%tind.io%'
    OR lower(legalname) LIKE '%vivli%' OR lower(legalshortname) LIKE '%vivli%'
),
project_ids AS (
  SELECT
    target,
    legalname AS infra,
    legalshortname AS infra_acronym,
    ror AS infra_ror
  FROM `coki-scratch-space.ioi.openaire-relations-project` AS A
  RIGHT JOIN infra_ids AS B ON A.source=B.id
)
SELECT 
  ARRAY_AGG(funder.name IGNORE NULLS) AS FUNDER,
  ARRAY_AGG(funder.shortName IGNORE NULLS) AS FUNDER_ACRONYM,
  ARRAY_AGG(funder.funding_stream.id IGNORE NULLS) AS FUNDER_ID,
  ARRAY_AGG(funder.funding_stream.description IGNORE NULLS) AS FUNDER_DESCRIPTION,
  ARRAY_AGG(funder.jurisdiction IGNORE NULLS) AS FUNDER_JURISDICTION,
  D.infra AS OI, 
  D.infra_acronym AS OI_ACRONYM, 
  D.infra_ror AS OI_ROR,
  C.startdate AS PROJECT_START_DATE,
  C.enddate AS PROJECT_END_DATE,
  ARRAY_AGG(granted.currency IGNORE NULLS) AS CURRENCY,
  ARRAY_AGG(granted.fundedamount IGNORE NULLS) AS AMOUNT,
  ARRAY_AGG(granted.totalcost IGNORE NULLS) AS TOTAL_COST,
  C.id AS PROJECT_ID,
  C.title AS PROJECT_TITLE,
  C.acronym AS PROJECT_ACRONYM,
  C.summary AS PROJECT_SUMMARY,
  C.keywords AS PROJECT_KEYWORDS,
  C.websiteurl AS PROJECT_URL,
  C.openaccessmandateforpublications AS PROJECT_OA_MANDATE_FOR_PUB,
  C.openaccessmandatefordataset AS PROJECT_OA_MANDATE_FOR_DATA
FROM `academic-observatory.openaire.project20230817` AS C, UNNEST(funding) AS funder, UNNEST(granted) AS granted
  LEFT JOIN project_ids AS D ON C.id=D.target
WHERE id in (SELECT target from project_ids)
GROUP BY OI, OI_ACRONYM, OI_ROR, PROJECT_START_DATE, PROJECT_END_DATE, PROJECT_ID, PROJECT_TITLE, PROJECT_ACRONYM, PROJECT_SUMMARY, PROJECT_KEYWORDS, PROJECT_URL, PROJECT_OA_MANDATE_FOR_PUB, PROJECT_OA_MANDATE_FOR_DATA
ORDER BY D.infra
