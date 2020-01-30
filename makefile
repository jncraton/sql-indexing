all: calls.csv

calls.csv:
	wget -O calls.csv https://data.seattle.gov/api/views/33kz-ixgy/rows.csv?accessType=DOWNLOAD

test:
	cat solution.sql | sqlite3

clean:
	rm -f calls.csv
