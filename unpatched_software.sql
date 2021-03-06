/****************************************************************\
| DESCRIPTION                                                    |
| Find outdated software on windows computers                     |
|                                                                |
| VARIABLES                                                      |
| Name (string) - name of installed appliaction                  |
| Version (string) - goal version of application                 |
\****************************************************************/

SELECT name, version, publisher, install_location, 
CASE
     WHEN version >= '$$Version$$' THEN 'Software is updated'
     WHEN version < '$$Version$$' THEN 'Software is outdated'
END AS Status 
FROM programs WHERE name = '$$Name$$'