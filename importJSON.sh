ls -1 *.json | sed 's/.json$//' | while read col; do
    mongoimport -d ${database} -c $col < $col.json;
done