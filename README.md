# sql-challenge

![sql.png](/images/sql.png)

# A Database Mystery in Two Parts

## Project Outline
This project had me assume the role of a data analyst for a company who was tasked with creating a database to hold employee information and then performing some SQL queries from that data to return insights and tables.

### Part One
The first part of this project was to create an entity relationship diagram to build the database of employee information. TO assist, we were provided with a series of CSV files which contained the data.

These CSV files were turned into tables using an online tool to help build the database, and you can view an image of the ERD below:

![employees_ERD.png](/EmployeeSQL/employees_ERD2.png)

Creating this ERD also included designating the value types for each input on the tables (e.g. integer or varchar) and setting the primary keys for each table, as well as determining when a composite key was required.

Once the ERD was mapped out, it was used to create the schema for the tables which were created in PostgreSQL, using PGAdmin4. Each of the CSV's was then imported into PostreSQL to populate the tables with data.


### Part Two

Part two of this project required querying the database for specific employee information, this involved using the below functiosn in SQL:

- Joins
- SELECT functions
- Aggregate functions such as MEAN and SUM

These queries can be viewed in the employee_queries.sql file, which contains a description of what each query is designed to return along with the SQL code required to run it in PostgreSQL.


### Bonus

A final bonus portion of the project can be viewed in the employee_bonus.ipynb file. This was an extra challenge to import the data from PostgreSQL into Jupyter Notebooks by creating a connection through SQLalchemy.

Once the connection was created, we needed to import the Employee, Salary and Title tables as pandas dataframes and create two visualisatiuons with the data, a histogram showing the distribution of salaries across all employees and a bar chart showing the average salary for each job title.

This connection was created with some starter code, though it required some adjustment to get it working for my computer. To run the code yourself, you will need to create a config file (named config.py) containing your PostgreSQL username and password. The code will import these details as part of the dependencies.
