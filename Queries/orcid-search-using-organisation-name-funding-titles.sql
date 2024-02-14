SELECT
  person.name.given_names,
  person.name.family_name,
  person.name.credit_name,
  person.name.path,
  funding.funding_summary[OFFSET(0)].title.title as title,
  funding.funding_summary[OFFSET(0)].type as funding_type,
  funding.funding_summary[OFFSET(0)].start_date.year as start_year,
  funding.funding_summary[OFFSET(0)].organization.name as funder_name,
  funding.funding_summary[OFFSET(0)].organization.disambiguated_organization.disambiguated_organization_identifier as funder_id,
  funding.funding_summary[OFFSET(0)].external_ids.external_id[OFFSET(0)].external_id_value as external_id,
  funding.funding_summary[OFFSET(0)].external_ids.external_id[OFFSET(0)].external_id_url as external_url,

 FROM `academic-observatory.orcid.orcid`, UNNEST(activities_summary.fundings.group) as funding
 WHERE
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%doaj%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%coar e%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%rxiv%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%creative commons%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%crossref%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%datacite%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%dataverse%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%open access book%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%doab%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%directory of open access journal%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%doaj%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%dryad%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title)  LIKE '%erudit%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%europe pmc%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%figshare%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%humanities commons%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%igsn'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%la referencia%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%mendeley %'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%open%archive%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%oai%pmh%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%openarchive%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%oapen%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%public knowledge project%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%impact%story%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%opencitations%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%openedition%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%orcid%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%open science framework%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%peer community in%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%prereview%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%pubpub%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%ror.org%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%scielo%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%tind.io%'
  )
  OR
  EXISTS(
    SELECT 1 FROM UNNEST(funding.funding_summary) WHERE lower(title.title) LIKE '%vivli%'
  )