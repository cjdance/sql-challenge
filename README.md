# sql-challenge

![sql.png](/images/sql.png)

# A Database Mystery in Two Parts

## Project Outline
This project had me assume the role of a data analyst for a company who was tasked with creating a database to hold employee information and then performing some SQL queries from that data to return insights and tables.

### Part One
The first part of this project was to create an entity relationship diagram to build the database of employee information. TO assist, we were provided with a series of CSV files which contained the data.

These CSV files were turned into tables using an online tool to help build the database, and you can view an image of the ERD below:

![employees_ERD.png](/EmployeeSQL/employees_ERD.png)

Creating this ERD also included designating the value types for each input on the tables (e.g. integer or varchar) and setting the primary keys for each table, as well as determining when a composite key was required.

Once the ERD was mapped out, it was used to create the schema for the tables which were created in PostgreSQL, using PGAdmin4. Each of the CSV's was then imported into PostreSQL to populate the tables with data.