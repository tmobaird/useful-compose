#!/usr/bin/env bats

# The following can be used if you would like to spin up all containers
# for testing in an automated fashion. Including this is a little slower,
# but makes tests a little more indpendent.
#
# setup() {
#   docker-compose up -d activemq
# }

# teardown() {
#   docker-compose down
# }

load ../test/test_helper

@test "starts a service on port 8161" {
  expected=1

  result="$(lsof -i :8161 | wc -l)"

  expectedVsActual $expected $result
  [ $result -gt $expected ]
}

@test "starts a new activemq docker container" {
  expected=1

  result="$(docker ps | grep activemq | wc -l)"

  expectedVsActual $expected $result
  [ $result -eq $expected ]
}
