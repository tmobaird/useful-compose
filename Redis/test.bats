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

expectedVsActual() {
    echo "================="
    echo "Expected: $1"
    echo "Actual $2"
    echo "================="
}

@test "starts a service on port 6379" {
  expected=1

  result="$(lsof -i :6379 | wc -l)"

  expectedVsActual $expected $result
  [ $result -gt $expected ]
}

@test "starts a new redis docker container" {
  expected=1

  result="$(docker ps | grep redis | wc -l)"

  expectedVsActual $expected $result
  [ $result -eq $expected ]
}
