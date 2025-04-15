WITH data_combine AS (
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2008`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2009`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2010`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2011`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2012`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2013`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2014`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2015`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2016`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2017`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2018`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2019`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2020`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2021`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2022`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2023`
UNION ALL
SELECT funding_agency_name,recipient_name,recipient_name_raw,recipient_country_name,period_of_performance_start_date,period_of_performance_current_end_date,total_obligated_amount,usaspending_permalink,award_id_fain,transaction_description,prime_award_base_transaction_description,cfda_title FROM `coki-ioi.usaspending_hhs.2024`
)

SELECT
  ANY_VALUE(funding_agency_name) AS FUNDER,
  CAST(NULL AS STRING) AS FUNDER_ROR,
  ARRAY_AGG(DISTINCT recipient_name IGNORE NULLS) AS RECIPIENT,
  CAST(NULL AS STRING) AS RECIPIENT_ROR,
  ARRAY_AGG(DISTINCT recipient_country_name IGNORE NULLS) AS RECIPIENT_LOCATION,
  B.oi_name AS OI, 
  CAST(NULL AS STRING) AS PI_NAME,
  CAST(CAST(ANY_VALUE(period_of_performance_start_date) AS DATETIME) AS DATE) AS START_DATE,
  CAST(CAST(ANY_VALUE(period_of_performance_current_end_date) AS DATETIME) AS DATE) AS END_DATE,
  CAST(NULL AS NUMERIC) AS GRANT_YEAR,
  CAST(NULL AS STRING) AS GRANT_DURATION,
  CAST(MAX(total_obligated_amount) AS NUMERIC) AS AMOUNT,
  "USD" AS CURRENCY,
  CAST(MAX(total_obligated_amount) AS NUMERIC) AS AMOUNT_USD,
  "usaspending" AS SOURCE,
  ANY_VALUE(usaspending_permalink) AS SOURCE_URL,
  CAST(award_id_fain AS STRING) AS GRANT_ID,
  CAST(NULL AS STRING) AS TITLE,
  ANY_VALUE(
    CASE
      WHEN LENGTH(A.transaction_description)>=LENGTH(A.prime_award_base_transaction_description) THEN A.transaction_description
      ELSE A.prime_award_base_transaction_description
    END
  ) AS DESCRIPTION,
  ANY_VALUE(cfda_title) AS FUNDER_PROGRAM,
  CAST(NULL AS STRING) AS IP_SOLNCAT_1,
  CAST(NULL AS STRING) AS IP_SOLNCAT_2,
  CAST(NULL AS STRING) AS GRANT_CAT_1,
  CAST(NULL AS STRING) AS GRANT_CAT_2
FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
  LEFT JOIN data_combine AS A
  ON (REGEXP_CONTAINS(lower(A.transaction_description), B.terms_abstract) 
      OR REGEXP_CONTAINS(lower(A.prime_award_base_transaction_description), B.terms_abstract)
      OR REGEXP_CONTAINS(lower(A.recipient_name_raw), B.terms_recipient)
      OR REGEXP_CONTAINS(lower(A.recipient_name), B.terms_recipient)
      )
WHERE (A.transaction_description IS NOT NULL OR A.prime_award_base_transaction_description IS NOT NULL OR A.recipient_name_raw IS NOT NULL OR A.recipient_name IS NOT NULL)
GROUP BY GRANT_ID, OI
