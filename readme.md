SQL Indexing
============

This assignment will review basic knowledge of the SQL language and incorporate indexing to improve query performance against a large dataset.

Assignment
----------

### Database Creation

You will need to begin by creating the database to work on. You may download the datafile and initialize the SQLIte database using `make calls.db`. Alernatively, you may download the datafile from the following URL and import it to a database manually:

https://data.seattle.gov/api/views/33kz-ixgy/rows.csv?accessType=DOWNLOAD

### Test queries

I've provided a number of queries in the file `queries.sql`. This can be executed using the command `.read queries.sql` from your SQLite instance. Your goal is to improve the performance of these queries by only modifying the database and not the queries themselves. You'll want to use `explain query plan` to determine what may be causing queries to run slowly and add appropriate indices.

Please create a file names `solution.sql` that creates the appropriate indices and that **includes comments for each index you create explaining why you created it**.
