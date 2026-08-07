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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.arcadia` AS A 
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.chanzuckerberg` AS A 
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.gates` AS A 
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.imls` AS A 
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.jsmf` AS A 
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.kress` AS A 
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.macfound` AS A 
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.mellon` AS A 
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.neh` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_nsf_00 AS (
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.nsf_00` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_nsf_01 AS (
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.nsf_01` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.rwjf` AS A 
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.sloan_grants` AS A 
    ON (REGEXP_CONTAINS(lower(A.grant_description), B.terms_abstract)
        OR REGEXP_CONTAINS(lower(A.grant_title), B.terms_title)
        OR REGEXP_CONTAINS(lower(A.recipient_org_name), B.terms_recipient)
        )
  WHERE (grant_description IS NOT NULL) OR (grant_title IS NOT NULL) OR (recipient_org_name is NOT NULL)
  ORDER BY GRANT_ID
),
data_sshrc AS (
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.sshrc` AS A 
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
  FROM `coki-ioi.search_terms.search_terms_all20260513` AS B
    LEFT JOIN `coki-ioi.funder_data_2026.wellcome` AS A 
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
SELECT * FROM data_gates
UNION ALL
SELECT * FROM data_imls
UNION ALL
SELECT * FROM data_jsmf
UNION ALL
SELECT * FROM data_kress
UNION ALL
SELECT * FROM data_macfound
UNION ALL
SELECT * FROM data_mellon
UNION ALL
SELECT * FROM data_neh
UNION ALL 
SELECT * FROM data_nsf_00
UNION ALL 
SELECT * FROM data_nsf_01
UNION ALL 
SELECT * FROM data_rwjf
UNION ALL
SELECT * FROM data_sloan
UNION ALL 
SELECT * FROM data_sshrc
UNION ALL 
SELECT * FROM data_wellcome




