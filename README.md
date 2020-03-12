# ksql-test-runner

To build and run the test 

```
docker build --tag ksql-test-runner .
docker run -ti -v$(pwd)/scripts:/scripts ksql-test-runner --sql-file=/scripts/statements.sql --output-file=/scripts/output.json --input-file=/scripts/input.json

```

