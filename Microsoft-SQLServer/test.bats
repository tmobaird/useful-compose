#!/usr/bin/env bats

# The following can be used if you would like to spin up all containers
# for testing in an automated fashion. Including this is a little slower,
# but makes tests a little more indpendent.
#
# setup() {
#   docker-compose up -d sqlserver
# }

# teardown() {
#   docker-compose down
# }

load ../test/test_helper

@test "starts a service on port 1433" {
  expected=1

  result="$(lsof -i :1433 | wc -l)"

  expectedVsActual $expected $result
  [ $result -gt $expected ]
}

@test "starts a ms-sql server service on localhost" {
  expected=1

  result="$(lsof -i :1433 | grep localhost:ms-sql-s | wc -l)"

  expectedVsActual $expected $result
  [ $result -eq $expected ]
}

@test "starts a new mssql-server-linux docker container" {
  expected=1

  result="$(docker ps | grep mssql-server-linux | wc -l)"

  expectedVsActual $expected $result
  [ $result -eq $expected ]
}
