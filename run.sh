docker build --tag test .
docker run -v /home/andy/go/src/github.com/the4thamigo-uk/ksql-test-runner/scripts:/scripts -ti test --sql-file /scripts/statements.sql --input-file /scripts/input.json --output-file /scripts/output.json
