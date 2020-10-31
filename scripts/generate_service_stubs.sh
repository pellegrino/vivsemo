#!/usr/bin/env bash
set -e

# rm -rf ./lib/model/google
rm -rf ./lib/model/rpc/vivsemo

protoc -I. --twirp_dart_out=./lib/model --dart_out=./lib/model rpc/vivsemo/service.proto
# Leaving this as an example of how to handle google.protobuf.Timestamps, if they were present
protoc -I. --twirp_dart_out=./lib/model --dart_out=./lib/model $PROTO_DIR/google/protobuf/empty.proto

flutter dartfmt ./lib/model