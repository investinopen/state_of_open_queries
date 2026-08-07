WITH
  
grant_ids_target AS (
SELECT
  UPPER(GRANT_ID) AS GRANT_ID_B,
  "openalex" AS SOURCE_B  
FROM `coki-ioi.search_results.results_openalex20260526`
WHERE
  "U.S. Department of Defense" IN UNNEST(FUNDER)
UNION ALL
SELECT
  UPPER(GRANT_ID) as GRANT_ID_B,
  "openaire" AS SOURCE_B
FROM `coki-ioi.search_results.results_openaire20260608`
WHERE
  "U.S. Department of Defense" IN UNNEST(FUNDER)
)

SELECT
  table_a.*,
  SOURCE AS SOURCE_A,
  GRANT_ID AS GRANT_ID_A,
  SOURCE_B,
  GRANT_ID_B
FROM `coki-ioi.search_results.results_dod_20260521` AS table_a
  LEFT JOIN grant_ids_target AS table_b
  ON (
    UPPER(GRANT_ID_B) LIKE CONCAT('%',UPPER(GRANT_ID),'%') OR
    UPPER(GRANT_ID) LIKE CONCAT('%',UPPER(GRANT_ID_B),'%')
  )

