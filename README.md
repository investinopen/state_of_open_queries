# ioi-openaire-queries
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
