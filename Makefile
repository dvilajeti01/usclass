SHELL := /bin/bash

run:
	go run app/services/sales-api/main.go | go run app/tooling/logfmt/main.go

down:
	kill -INT $(shell ps | grep go-build | grep -v grep | sed -n 2,2p | cut -c1-5)

# ==============================================================================
# Modules support

tidy:
	go mod tidy
	go mod vendor
