data:
	mkdir data
	curl https://s3.amazonaws.com/clearstreets-data/02-08-2015/plow-02-08-2015.db > data/snowplows.db

data/csv: data/snowplows.db
	sql2csv --db sqlite:///data/snowplows.db  --query "SELECT * FROM route_points;" > snowplows.csv

locationAvg: data/csv
	python loc_avg.py
