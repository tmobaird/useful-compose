#!/usr/bin/env bats

# The following can be used if you would like to spin up all containers
# for testing in an automated fashion. Including this is a little slower,
# but makes tests a little more indpendent.
#
# setup() {
#   docker-compose up -d postgres
# }

# teardown() {
#   docker-compose down
# }

load ../test/test_helper

@test "starts a service on port 5432" {
  expected=1

  result="$(lsof -i :5432 | wc -l)"

  expectedVsActual $expected $result
  [ $result -gt $expected ]
}

@test "starts a postgres service on localhost" {
  expected=1

  result="$(lsof -i :5432 | grep localhost:postgresql | wc -l)"

  expectedVsActual $expected $result
  [ $result -eq $expected ]
}

@test "starts a new postgres docker container" {
  expected=1

  result="$(docker ps | grep postgres | wc -l)"

  expectedVsActual $expected $result
  [ $result -eq $expected ]
}
