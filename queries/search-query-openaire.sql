WITH data_relation_organization AS (
  SELECT
    source,
    target,
    legalname,
    country.label AS country,
  FROM `coki-ioi.openaire.openaire-relations-project20241014`
    LEFT JOIN `academic-observatory.openaire.organization20240726`
    ON source=id
),
data_project_organization AS (
  SELECT
    A.*,
    legalname AS RECIPIENT,
    country AS RECIPIENT_LOCATION
  FROM `academic-observatory.openaire.project20240726` AS A
    LEFT JOIN data_relation_organization AS B ON id=target
)
SELECT
  ARRAY_AGG(DISTINCT funder.name IGNORE NULLS) AS FUNDER,
  CAST(NULL AS STRING) AS FUNDER_ROR,
  ARRAY_AGG(DISTINCT RECIPIENT IGNORE NULLS) AS RECIPIENT,
  CAST(NULL AS STRING) AS RECIPIENT_ROR,
  ARRAY_AGG(DISTINCT RECIPIENT_LOCATION IGNORE NULLS) AS RECIPIENT_LOCATION,
  B.oi_name AS OI, 
  CAST(NULL AS STRING) AS PI_NAME,
  CAST(CAST(ANY_VALUE(startdate) AS DATETIME) AS DATE) AS START_DATE,
  CAST(CAST(ANY_VALUE(enddate) AS DATETIME) AS DATE) AS END_DATE,
  CAST(NULL AS NUMERIC) AS GRANT_YEAR,
  CAST(NULL AS STRING) AS GRANT_DURATION,
  CAST(MAX(granted.fundedamount) AS NUMERIC) AS AMOUNT,
  ANY_VALUE(granted.currency) AS CURRENCY,
  CAST(NULL AS NUMERIC) AS AMOUNT_USD,
  "openaire" AS SOURCE,
  CAST(NULL AS STRING) AS SOURCE_URL,
  CAST(id AS STRING) AS GRANT_ID,
  ANY_VALUE(A.title) AS TITLE,
  ANY_VALUE(A.summary) AS DESCRIPTION,
  CAST(NULL AS STRING) AS FUNDER_PROGRAM,
  CAST(NULL AS STRING) AS IP_SOLNCAT_1,
  CAST(NULL AS STRING) AS IP_SOLNCAT_2,
  CAST(NULL AS STRING) AS GRANT_CAT_1,
  CAST(NULL AS STRING) AS GRANT_CAT_2
FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
  LEFT JOIN data_project_organization AS A
  ON (REGEXP_CONTAINS(lower(A.summary), B.terms_abstract) 
      OR REGEXP_CONTAINS(lower(A.title), B.terms_title)
      OR REGEXP_CONTAINS(lower(A.RECIPIENT), B.terms_recipient)
      ),
  UNNEST(funding) AS funder, UNNEST(granted) AS granted
WHERE (A.summary IS NOT NULL OR  A.title IS NOT NULL OR A.RECIPIENT IS NOT NULL)
GROUP BY GRANT_ID, OI
