#!/usr/bin/env bash

echo "Creating"

cockroachdb/cockroach:v22.2.5 start \
--insecure \
--join=cockroach1,cockroach2,cockroach3