# ioi-openaire-queries
Queries used to search for open infrastructure and funder data in openaire

Step 1:
Run "openaire-relations-project.sql" to filter the relations table down to relations in which the target is a project

Step 2:
Run "openaire-search-using-organisation-name-acronym-url.sql" to query the organisations table using a predefined set of names, acronyms, and websiteurls for open infrastructures of interest. The query will then extract various information about these organisations, and use the table produced in step 1 to extract projects from the projects table that are related to these organisations. Then finally clean and sort the final result.

Step 3:
