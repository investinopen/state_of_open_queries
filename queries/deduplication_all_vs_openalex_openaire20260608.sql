SELECT
  SOURCE_A,
  GRANT_ID_A,
  SOURCE_B,
  GRANT_ID_B
FROM `coki-ioi.search_results.results_dod_vs_openalex_openaire20260608`
WHERE SOURCE_B IS NOT NULL

UNION ALL

SELECT
  SOURCE_A,
  GRANT_ID_A,
  SOURCE_B,
  GRANT_ID_B
FROM `coki-ioi.search_results.results_hhs_vs_openalex_openaire20260608`
WHERE SOURCE_B IS NOT NULL

UNION ALL

SELECT
  SOURCE_A,
  GRANT_ID_A,
  SOURCE_B,
  GRANT_ID_B
FROM `coki-ioi.search_results.results_nasa_vs_openalex_openaire20260608`
WHERE SOURCE_B IS NOT NULL

UNION ALL

SELECT
  SOURCE_A,
  GRANT_ID_A,
  SOURCE_B,
  GRANT_ID_B
FROM `coki-ioi.search_results.results_scrapers_vs_openalex_openaire20260608`
WHERE SOURCE_B IS NOT NULL
