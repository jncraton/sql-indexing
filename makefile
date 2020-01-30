all:

calls.csv:
	wget -O calls.csv https://data.seattle.gov/api/views/33kz-ixgy/rows.csv?accessType=DOWNLOAD

calls.db: calls.csv import.sql
	cat import.sql | sqlite3 calls.db

test:
	cat solution.sql | sqlite3

clean:
	rm -f calls.csv calls.db
