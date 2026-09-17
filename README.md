# Update for 2026 special report (Wellcome)

Search terms:
The list of search terms was updated and is now in the file "search_terms_wellcome20260817.csv" under the search_terms folder.

OPENAIRE results:
The new OPENAIRE data dump used is provided by Sesame Open Science via their "sos-datasources" project on Google BigQuery. The query "query_openaire_relations_table20260513.sql" is used to extract all projects from the raw data tables. The query "query_openaire_wellcome20260817.sql" is then used to match all projects to organisations (including funders) and then filter the dataset using the search terms.

OpenAlex results:
The raw OpenAlex awards data were uploaded to COKI's Google BigQuery project from a March 2026 snapshot from "https://subugoe.github.io/scholcomm_analytics/data.html#status-openalex-walden". Due to the size of the data, two separate queries were used. First, the query "query_openalex_awards20260514_part1.sql" is used to extract only the necessary columns needed for this report, with conditions on at least some information is available on the project description, name or affiliation (these were tested as sensible conditions to have meaningful data rows for further analysis). Then a second query "query_openalex_awards20260817_part2_wellcome.sql" is used to filter the data using the search terms.

Scraper results:
Data from each scraper was uploaded to COKI's Google BigQuery project. Then the query "query_combine_all_funder_data_wellcome_2026.sql" is used to extract/filter all data tables using the search terms and then merge them into one big data table.

USASpending results:
Data from USASpending were uploaded to COKI's Google BigQuery project. These data were presented in yearly files for each agency. The yearly data were combined before being filtered using the search terms, for each agency. The queries used are "query_usaspending_dod20260817_wellcome.sql", "query_usaspending_hhs20260817_wellcome.sql", and "query_usaspending_nasa20260817_wellcome.sql".

Deduplication:
Deduplication were performed manually for the 2026 special report.

# Updates for 2026 report

Search terms:
The list of search terms was updated and is now in the file "search_terms_all20260513.csv" under the search_terms folder.

OPENAIRE results:
The new OPENAIRE data dump used is provided by Sesame Open Science via their "sos-datasources" project on Google BigQuery. The query "query_openaire_relations_table20260513.sql" is used to extract all projects from the raw data tables. The query "query_openaire20260608.sql" is then used to match all projects to organisations (including funders) and then filter the dataset using the search terms.

OpenAlex results:
The raw OpenAlex awards data were uploaded to COKI's Google BigQuery project from a March 2026 snapshot from "https://subugoe.github.io/scholcomm_analytics/data.html#status-openalex-walden". Due to the size of the data, two separate queries were used. First, the query "query_openalex_awards20260514_part1.sql" is used to extract only the necessary columns needed for this report, with conditions on at least some information is available on the project description, name or affiliation (these were tested as sensible conditions to have meaningful data rows for further analysis). Then a second query "query_openalex_awards20260526_part2.sql" is used to filter the data using the search terms.

Scraper results:
Data from each scraper was uploaded to COKI's Google BigQuery project. Then the query "query_combine_all_funder_data_2026.sql" is used to extract/filter all data tables using the search terms and then merge them into one big data table.

USASpending results:
Data from USASpending were uploaded to COKI's Google BigQuery project. These data were presented in yearly files for each agency. The yearly data were combined before being filtered using the search terms, for each agency. The queries used are "query_usaspending_dod20260521.sql", "query_usaspending_hhs20260521.sql", and "query_usaspending_nasa20260521.sql".

Deduplication:
This phrase of the deduplication process matches the results from the scrapers and USASpending against OpenAlex and OPENAIRE. The query "deduplication_scraper_vs_openalex_openaire20260608.sql" matches the grant IDs from each of result from the scrapers against grant IDS from OpenAlex and OPENAIRE using the LIKE operator with wildcard % to cater for prefixes, suffixes, etc. This is similarly done for each of the USASpending result set via "deduplication_dod_openalex_openaire_20260608.sql", "deduplication_hhs_openalex_openaire_20260608.sql", and "deduplication_nasa_vs_openalex_openaire20260608.sql", respectively. Then the final results from each of the above are combined into one final set using "deduplication_all_vs_openalex_openaire20260608.sql" - this provides a table that matched any potential awards (via grant ID) across the data sets.

# Updates for 2025 report

Search terms:  
The list of search terms was expanded and is now in the file "search_terms_all20241014.csv" under the search_terms folder.

Openaire:  
The updated openaire data dump was ingested into the COKI Academic Observatory as before using: https://github.com/The-Academic-Observatory/openaire-ingest. 
The "openaire-relations-project.sql" in the queries folder has been updated to point to the updated openaire table on BigQuery.
The updated search query for relevant projects in openaire is "search-query-openaire.sql" in the queries folder. 

Scraped funder data:  
The updated search query for all scraped data from funders (scraper at https://github.com/investinopen/state_of_open_funder_data_scrapers) is "search-query-scraped-funders.sql" in the queries folder.

USASpending:  
The queries used to search for projects/awards from data downloaded from USASpending, for DOD, HHS, IMLS, and NASA, respectively, are in the queries folder  
"search-query-usaspending-dod.sql"  
"search-query-usaspending-hhs.sql"  
"search-query-usaspending-imls.sql"  
"search-query-usaspending-nasa.sql"  

# ioi-openaire-queries (2024 report)
Queries used to search for open infrastructure and funder data in openaire

Step 1:
Run "openaire-relations-project.sql" to filter the relations table down to relations in which the target is a project

Step 2:
Run "openaire-search-using-organisation-name-acronym-url.sql" to query the organisations table using a predefined set of names, acronyms, and websiteurls for open infrastructures (OIs) of interest. The query will then extract various information about these organisations, and use the table produced in step 1 to extract projects from the projects table that are related to these organisations. Then finally clean and sort the final result. The search ternms used are in the file "openaire query building.xlsx" under the tab "Refined search terms". Here each search term is carefully tested and edited to both increase coverage and remove unwanted entries. Various "common" terms like "core" are not sued in the search (compare the orginal terms and the refined terms in the xlsx file).

Step 3:
Names and acronyms (i.e., search terms) of OIs are placed in a table ("oi-name.csv") and is refined to remove "common terms" to give "oa-name-deduced.csv". This is then used to find projects in which the "summary" field contains the search terms via the query "openaire-search-using-project-summary.sql".

Step 4:
Repeat step 3 using "oi-name-deduced.csv" and "openaire-search-using-project-title.sql" to search for projects in which the title contains the search terms.

Step 5:
Repeat step 3 using "oi-url" and "openaire-search-using-project-url.sql" to search for projects in which the url contains the search terms (partial urls of the OIs of interest).
