#!/usr/bin/env bash

testDeploy() {
  psql -U postgres -h localhost -v pgver_schema=mydata -1f ../pgver.sql
  assertEquals 0 $?
}

. shunit2
