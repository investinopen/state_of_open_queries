SELECT
  ARRAY_AGG(funder.name IGNORE NULLS) AS FUNDER,
  ARRAY_AGG(funder.shortName IGNORE NULLS) AS FUNDER_ACRONYM,
  ARRAY_AGG(funder.funding_stream.id IGNORE NULLS) AS FUNDER_ID,
  ARRAY_AGG(funder.funding_stream.description IGNORE NULLS) AS FUNDER_DESCRIPTION,
  ARRAY_AGG(funder.jurisdiction IGNORE NULLS) AS FUNDER_JURISDICTION,
  B.infra_name AS OI, 
  B.infra_search_terms AS OI_SEARCH,
  A.startdate AS PROJECT_START_DATE,
  A.enddate AS PROJECT_END_DATE,
  ARRAY_AGG(granted.currency IGNORE NULLS) AS CURRENCY,
  ARRAY_AGG(granted.fundedamount IGNORE NULLS) AS AMOUNT,
  ARRAY_AGG(granted.totalcost IGNORE NULLS) AS TOTAL_COST,
  A.id AS PROJECT_ID,
  A.title AS PROJECT_TITLE,
  A.acronym AS PROJECT_ACRONYM,
  A.summary AS PROJECT_SUMMARY,
  A.keywords AS PROJECT_KEYWORDS,
  A.websiteurl AS PROJECT_URL,
  A.openaccessmandateforpublications AS PROJECT_OA_MANDATE_FOR_PUB,
  A.openaccessmandatefordataset AS PROJECT_OA_MANDATE_FOR_DATA
FROM `coki-scratch-space.ioi.oi-name-deduced` AS B
  LEFT JOIN `academic-observatory.openaire.project20230817` AS A ON REGEXP_CONTAINS(A.summary, B.infra_search_terms), UNNEST(funding) AS funder, UNNEST(granted) AS granted
WHERE A.summary IS NOT NULL
GROUP BY OI, OI_SEARCH, PROJECT_START_DATE, PROJECT_END_DATE, PROJECT_ID, PROJECT_TITLE, PROJECT_ACRONYM, PROJECT_SUMMARY, PROJECT_KEYWORDS, PROJECT_URL, PROJECT_OA_MANDATE_FOR_PUB, PROJECT_OA_MANDATE_FOR_DATA
ORDER BY OI_SEARCH