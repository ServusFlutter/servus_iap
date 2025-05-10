#!/usr/bin/env bash

GRPC_SCHEMES=../grpc_schemes

PROTOC="protoc --dart_out=grpc:lib/src/data/generated -I$GRPC_SCHEMES"

$PROTOC $GRPC_SCHEMES/iap/iap.proto

dart format lib/src/data/generated