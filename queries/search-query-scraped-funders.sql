WITH 
data_arcadia AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.arcadia` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract) 
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_chanzuckerberg AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.chanzuckerberg` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract) 
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_dfg_00 AS (
    SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.dfg_00` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract) 
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_dfg_01 AS (
    SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.dfg_01` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_dfg_02 AS (
    SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.dfg_02` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_dfg_03 AS (
    SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.dfg_03` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_dfg_04 AS (
    SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.dfg_04` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_dorrisduke AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.dorrisduke` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_gates AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.gates` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_helmsley AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.helmsley` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_hewlett AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.hewlett` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_imls AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.imls` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_jsmf AS(
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.jsmf` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_knight AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.knight` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_kress AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.kress` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_macfound AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.macfound` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_mellon AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.mellon` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_moore AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.moore` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_neh AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    #CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(TIMESTAMP_MILLIS(grant_start_date) AS DATE) AS START_DATE,
    #CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(TIMESTAMP_MILLIS(grant_end_date) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.neh` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_nsf AS (
  SELECT
    ANY_VALUE(FUNDER) AS FUNDER,
    ANY_VALUE(FUNDER_ROR) AS FUNDER_ROR,
    ANY_VALUE(RECIPIENT) AS RECIPIENT,
    ANY_VALUE(RECIPIENT_ROR) AS RECIPIENT_ROR,
    ANY_VALUE(RECIPIENT_LOCATION) AS RECIPIENT_LOCATION,
    OI,
    ANY_VALUE(PI_NAME) AS PI_NAME,
    ANY_VALUE(START_DATE) AS START_DATE,
    ANY_VALUE(END_DATE) AS END_DATE,
    ANY_VALUE(GRANT_YEAR) AS GRANT_YEAR,
    ANY_VALUE(GRANT_DURATION) AS GRANT_DURATION,
    AMOUNT,
    ANY_VALUE(CURRENCY) AS CURRENCY,
    ANY_VALUE(AMOUNT_USD) AS AMOUNT_USD,
    ANY_VALUE(SOURCE) AS SOURCE,
    ANY_VALUE(SOURCE_URL) AS SOURCE_URL,
    GRANT_ID,
    ANY_VALUE(TITLE) AS TITLE,
    ANY_VALUE(DESCRIPTION) AS DESCRIPTION,
    ANY_VALUE(FUNDER_PROGRAM) AS FUNDER_PROGRAM,
    ANY_VALUE(IP_SOLNCAT_1) AS IP_SOLNCAT_1,
    ANY_VALUE(IP_SOLNCAT_2)AS IP_SOLNCAT_2,
    ANY_VALUE(GRANT_CAT_1) AS GRANT_CAT_1,
    ANY_VALUE(GRANT_CAT_2) AS GRANT_CAT_2
  FROM (
  (SELECT
    #funder_org_name AS FUNDER,
    "NSF" AS FUNDER,
    #funder_org_ror_id AS FUNDER_ROR,
    CAST(NULL AS STRING) AS FUNDER_ROR,
    #recipient_org_name AS RECIPIENT,
    (SELECT STRING_AGG(X.Name) FROM UNNEST(Institution) AS X) AS RECIPIENT,
    #recipient_org_ror_id AS RECIPIENT_ROR,
    CAST(NULL AS STRING) AS RECIPIENT_ROR,
    #recipient_org_location AS RECIPIENT_LOCATION,
    (SELECT STRING_AGG(X.CountryName) FROM UNNEST(Institution) AS X) AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    #pi_name AS PI_NAME,
    (SELECT CAST(CONCAT(X.FirstName," ",X.LastName) AS STRING) FROM UNNEST(Investigator) AS X WHERE RoleCode="Principal Investigator") AS PI_NAME,
    #CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(PARSE_DATE("%m/%d/%Y",AwardEffectiveDate) AS DATE) AS START_DATE,
    #CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(PARSE_DATE("%m/%d/%Y",AwardExpirationDate) AS DATE) AS END_DATE,
    #CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(NULL AS NUMERIC) AS GRANT_YEAR,
    #CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(NULL AS STRING) AS GRANT_DURATION,
    #CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(AwardAmount AS NUMERIC) AS AMOUNT,
    #CAST(award_currency AS STRING) AS CURRENCY,
    CAST(NULL AS STRING) AS CURRENCY,
    #CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    CAST(NULL AS NUMERIC) AS AMOUNT_USD,
    #source AS SOURCE,
    "nsf" AS SOURCE,
    #source_url AS SOURCE_URL,
    CAST(NULL AS STRING) AS SOURCE_URL,
    #grant_id AS GRANT_ID,
    AwardID AS GRANT_ID,
    #grant_title AS TITLE,
    AwardTitle AS TITLE,
    #grant_description AS DESCRIPTION,  
    AbstractNarration AS DESCRIPTION,  
    #program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
   FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.nsf` AS A
    ON (REGEXP_CONTAINS(lower(AbstractNarration), B.terms_abstract) 
        OR REGEXP_CONTAINS(lower(AwardTitle), B.terms_title)
        OR REGEXP_CONTAINS(lower((SELECT STRING_AGG(X.Name) FROM UNNEST(Institution) AS X)), B.terms_recipient)
        #(REGEXP_CONTAINS(lower(A.grant_description), lower(B.terms_abstract)) 
        # OR REGEXP_CONTAINS(lower(A.grant_title), lower(B.terms_title))
        # OR REGEXP_CONTAINS(lower(A.recipient_org_name), lower(B.terms_recipient))
        )
   WHERE (AbstractNarration IS NOT NULL) OR (AwardTitle IS NOT NULL) OR ((SELECT STRING_AGG(X.Name) FROM UNNEST(Institution) AS X) is NOT NULL)
   # WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
   ORDER BY GRANT_ID
  )
  UNION DISTINCT
  (SELECT
    #funder_org_name AS FUNDER,
    "NSF" AS FUNDER,
    #funder_org_ror_id AS FUNDER_ROR,
    CAST(NULL AS STRING) AS FUNDER_ROR,
    #recipient_org_name AS RECIPIENT,
    (SELECT STRING_AGG(X.Name) FROM UNNEST(Institution) AS X) AS RECIPIENT,
    #recipient_org_ror_id AS RECIPIENT_ROR,
    CAST(NULL AS STRING) AS RECIPIENT_ROR,
    #recipient_org_location AS RECIPIENT_LOCATION,
    (SELECT STRING_AGG(X.CountryName) FROM UNNEST(Institution) AS X) AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    #pi_name AS PI_NAME,
    (SELECT CAST(CONCAT(X.FirstName," ",X.LastName) AS STRING) FROM UNNEST(Investigator) AS X WHERE RoleCode="Principal Investigator") AS PI_NAME,
    #CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(PARSE_DATE("%m/%d/%Y",AwardEffectiveDate) AS DATE) AS START_DATE,
    #CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(PARSE_DATE("%m/%d/%Y",AwardExpirationDate) AS DATE) AS END_DATE,
    #CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(NULL AS NUMERIC) AS GRANT_YEAR,
    #CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(NULL AS STRING) AS GRANT_DURATION,
    #CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(AwardAmount AS NUMERIC) AS AMOUNT,
    #CAST(award_currency AS STRING) AS CURRENCY,
    CAST(NULL AS STRING) AS CURRENCY,
    #CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    CAST(NULL AS NUMERIC) AS AMOUNT_USD,
    #source AS SOURCE,
    "nsf" AS SOURCE,
    #source_url AS SOURCE_URL,
    CAST(NULL AS STRING) AS SOURCE_URL,
    #grant_id AS GRANT_ID,
    AwardID AS GRANT_ID,
    #grant_title AS TITLE,
    AwardTitle AS TITLE,
    #grant_description AS DESCRIPTION,  
    AbstractNarration AS DESCRIPTION,  
    #program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
   FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data.nsf` AS A
    ON (REGEXP_CONTAINS(lower(AbstractNarration), B.terms_abstract) 
        OR REGEXP_CONTAINS(lower(AwardTitle), B.terms_title)
        OR REGEXP_CONTAINS(lower((SELECT STRING_AGG(X.Name) FROM UNNEST(Institution) AS X)), B.terms_recipient)
        #(REGEXP_CONTAINS(lower(A.grant_description), lower(B.terms_abstract)) 
        # OR REGEXP_CONTAINS(lower(A.grant_title), lower(B.terms_title))
        # OR REGEXP_CONTAINS(lower(A.recipient_org_name), lower(B.terms_recipient))
        )
   WHERE (AbstractNarration IS NOT NULL) OR (AwardTitle IS NOT NULL) OR ((SELECT STRING_AGG(X.Name) FROM UNNEST(Institution) AS X) is NOT NULL)
   # WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
   ORDER BY GRANT_ID)
  )
  GROUP BY GRANT_ID, OI, AMOUNT
),
data_rwjf AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.rwjf` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_simons AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.simons` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_sloan AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.sloan` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_sshrc_00 AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.sshrc_00` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_sshrc_01 AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.sshrc_01` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_sshrc_02 AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.sshrc_02` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_templeton AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.templeton` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_wellcome AS (
  SELECT
    funder_org_name AS FUNDER,
    funder_org_ror_id AS FUNDER_ROR,
    recipient_org_name AS RECIPIENT,
    recipient_org_ror_id AS RECIPIENT_ROR,
    recipient_org_location AS RECIPIENT_LOCATION,
    B.oi_name AS OI,
    pi_name AS PI_NAME,
    #CAST(CAST(grant_start_date AS DATETIME) AS DATE) AS START_DATE,
    CAST(TIMESTAMP_MILLIS(grant_start_date) AS DATE) AS START_DATE,
    #CAST(CAST(grant_end_date AS DATETIME) AS DATE) AS END_DATE,
    CAST(TIMESTAMP_MILLIS(grant_end_date) AS DATE) AS END_DATE,
    CAST(grant_year AS NUMERIC) AS GRANT_YEAR,
    CAST(grant_duration AS STRING) AS GRANT_DURATION,
    CAST(award_amount AS NUMERIC) AS AMOUNT,
    CAST(award_currency AS STRING) AS CURRENCY,
    CAST(award_amount_usd AS NUMERIC) AS AMOUNT_USD,
    source AS SOURCE,
    source_url AS SOURCE_URL,
    grant_id AS GRANT_ID,
    grant_title AS TITLE,
    grant_description AS DESCRIPTION,    
    program_of_funder AS FUNDER_PROGRAM,
    CAST(NULL AS STRING) AS IP_SOLNCAT_1,
    CAST(NULL AS STRING) AS IP_SOLNCAT_2,
    CAST(NULL AS STRING) AS GRANT_CAT_1,
    CAST(NULL AS STRING) AS GRANT_CAT_2
  FROM `coki-ioi.search_terms.search_terms_all20241014` AS B
    LEFT JOIN `coki-ioi.funder_data_2025.wellcome` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
)

SELECT * FROM data_arcadia 
UNION ALL 
SELECT * FROM data_chanzuckerberg
UNION ALL 
SELECT * FROM data_dfg_00
UNION ALL 
SELECT * FROM data_dfg_01
UNION ALL 
SELECT * FROM data_dfg_02
UNION ALL
SELECT * FROM data_dfg_03
UNION ALL 
SELECT * FROM data_dfg_04
UNION ALL
SELECT * FROM data_dorrisduke
UNION ALL
SELECT * FROM data_gates
UNION ALL
SELECT * FROM data_helmsley
UNION ALL
SELECT * FROM data_hewlett
UNION ALL
SELECT * FROM data_imls
UNION ALL
SELECT * FROM data_jsmf
UNION ALL
SELECT * FROM data_knight
UNION ALL
SELECT * FROM data_kress
UNION ALL
SELECT * FROM data_macfound
UNION ALL
SELECT * FROM data_mellon
UNION ALL
SELECT * FROM data_moore
UNION ALL
SELECT * FROM data_neh
UNION ALL 
SELECT * FROM data_nsf
UNION ALL 
SELECT * FROM data_rwjf
UNION ALL 
SELECT * FROM data_simons
UNION ALL
SELECT * FROM data_sloan
UNION ALL 
SELECT * FROM data_sshrc_00
UNION ALL 
SELECT * FROM data_sshrc_01
UNION ALL 
SELECT * FROM data_sshrc_02
UNION ALL 
SELECT * FROM data_templeton
UNION ALL
SELECT * FROM data_wellcome
