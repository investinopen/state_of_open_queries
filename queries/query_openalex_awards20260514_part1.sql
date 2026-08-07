SELECT
  funder.display_name AS FUNDER,
  funder.ror AS FUNDER_ROR,
  lead_investigator.affiliation.name AS RECIPIENT,
  (SELECT id FROM UNNEST(lead_investigator.affiliation.ids) WHERE type="ror") AS RECIPIENT_ROR,
  lead_investigator.affiliation.country AS RECIPIENT_LOCATION,
  CONCAT(lead_investigator.given_name," ",lead_investigator.family_name) AS PI_NAME,
  CAST(CAST(start_date AS DATETIME) AS DATE) AS START_DATE,
  CAST(CAST(end_date AS DATETIME) AS DATE) AS END_DATE,
  CAST(start_year AS NUMERIC) AS GRANT_YEAR,
  CAST(NULL AS STRING) AS GRANT_DURATION,
  CAST(amount AS NUMERIC) AS AMOUNT,
  CAST(currency AS STRING) AS CURRENCY,
  CAST(NULL AS NUMERIC) AS AMOUNT_USD,
  provenance AS SOURCE,
  landing_page_url AS SOURCE_URL,
  funder_award_id AS GRANT_ID,
  display_name AS TITLE,
  description AS DESCRIPTION,    
  funder_scheme AS FUNDER_PROGRAM
FROM `coki-ioi.openalex_awards_2026.openalex_awards20260512`
WHERE (description IS NOT NULL) OR (display_name IS NOT NULL) OR (lead_investigator.affiliation.name is NOT NULL)
