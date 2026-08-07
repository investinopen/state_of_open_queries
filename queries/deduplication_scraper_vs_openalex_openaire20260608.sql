(
WITH
grant_ids_target AS (
SELECT
  UPPER(GRANT_ID) AS GRANT_ID_B,
  "openalex" AS SOURCE_B  
FROM `coki-ioi.search_results.results_openalex20260526`
WHERE
  "Bill and Melinda Gates Foundation" IN UNNEST(FUNDER)
UNION ALL
SELECT
  UPPER(GRANT_ID) as GRANT_ID_B,
  "openaire" AS SOURCE_B
FROM `coki-ioi.search_results.results_openaire20260608`
WHERE
  "Bill and Melinda Gates Foundation" IN UNNEST(FUNDER)
)
SELECT
  table_a.*,
  SOURCE AS SOURCE_A,
  GRANT_ID AS GRANT_ID_A,
  SOURCE_B,
  GRANT_ID_B
FROM (
  SELECT *
  FROM `coki-ioi.search_results.results_scrapers20260513` 
  WHERE FUNDER ="Bill & Melinda Gates Foundation"
  ) AS table_a
  LEFT JOIN grant_ids_target AS table_b
  ON (
    UPPER(GRANT_ID_B) LIKE CONCAT('%',UPPER(GRANT_ID),'%') OR
    UPPER(GRANT_ID) LIKE CONCAT('%',UPPER(GRANT_ID_B),'%')
  )
)

UNION ALL

(
WITH
grant_ids_target AS (
SELECT
  UPPER(GRANT_ID) AS GRANT_ID_B,
  "openalex" AS SOURCE_B  
FROM `coki-ioi.search_results.results_openalex20260526`
WHERE
  "National Science Foundation" IN UNNEST(FUNDER)
UNION ALL
SELECT
  UPPER(GRANT_ID) as GRANT_ID_B,
  "openaire" AS SOURCE_B
FROM `coki-ioi.search_results.results_openaire20260608`
WHERE
  "National Science Foundation" IN UNNEST(FUNDER)
)
SELECT
  table_a.*,
  SOURCE AS SOURCE_A,
  GRANT_ID AS GRANT_ID_A,
  SOURCE_B,
  GRANT_ID_B
FROM (
  SELECT *
  FROM `coki-ioi.search_results.results_scrapers20260513` 
  WHERE FUNDER ="National Science Foundation"
  ) AS table_a
  LEFT JOIN grant_ids_target AS table_b
  ON (
    UPPER(GRANT_ID_B) LIKE CONCAT('%',UPPER(GRANT_ID),'%') OR
    UPPER(GRANT_ID) LIKE CONCAT('%',UPPER(GRANT_ID_B),'%')
  )
)

UNION ALL

(
WITH
grant_ids_target AS (
SELECT
  UPPER(GRANT_ID) AS GRANT_ID_B,
  "openalex" AS SOURCE_B  
FROM `coki-ioi.search_results.results_openalex20260526`
WHERE
  "Social Sciences and Humanities Research Council of Canada" IN UNNEST(FUNDER)
UNION ALL
SELECT
  UPPER(GRANT_ID) as GRANT_ID_B,
  "openaire" AS SOURCE_B
FROM `coki-ioi.search_results.results_openaire20260608`
WHERE
  "Social Sciences and Humanities Research Council of Canada" IN UNNEST(FUNDER)
)
SELECT
  table_a.*,
  SOURCE AS SOURCE_A,
  GRANT_ID AS GRANT_ID_A,
  SOURCE_B,
  GRANT_ID_B
FROM (
  SELECT *
  FROM `coki-ioi.search_results.results_scrapers20260513` 
  WHERE FUNDER ="Social Sciences and Humanities Research Council"
  ) AS table_a
  LEFT JOIN grant_ids_target AS table_b
  ON (
    UPPER(GRANT_ID_B) LIKE CONCAT('%',UPPER(GRANT_ID),'%') OR
    UPPER(GRANT_ID) LIKE CONCAT('%',UPPER(GRANT_ID_B),'%')
  )
)

UNION ALL

(
WITH
grant_ids_target AS (
SELECT
  UPPER(GRANT_ID) AS GRANT_ID_B,
  "openalex" AS SOURCE_B  
FROM `coki-ioi.search_results.results_openalex20260526`
WHERE
  "Wellcome Trust" IN UNNEST(FUNDER)
UNION ALL
SELECT
  UPPER(GRANT_ID) as GRANT_ID_B,
  "openaire" AS SOURCE_B
FROM `coki-ioi.search_results.results_openaire20260608`
WHERE
  "Wellcome Trust" IN UNNEST(FUNDER)
)
SELECT
  table_a.*,
  SOURCE AS SOURCE_A,
  GRANT_ID AS GRANT_ID_A,
  SOURCE_B,
  GRANT_ID_B
FROM (
  SELECT *
  FROM `coki-ioi.search_results.results_scrapers20260513` 
  WHERE FUNDER ="The Wellcome Trust"
  ) AS table_a
  LEFT JOIN grant_ids_target AS table_b
  ON (
    UPPER(GRANT_ID_B) LIKE CONCAT('%',UPPER(GRANT_ID),'%') OR
    UPPER(GRANT_ID) LIKE CONCAT('%',UPPER(GRANT_ID_B),'%')
  )
)
