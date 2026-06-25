#!/usr/bin/env bash

set -euo pipefail

source_file="/Users/patrickwerner/IdeaProjects/KDL/output/CodeSystem-kdl.json"
target_file="/Users/patrickwerner/IdeaProjects/KDL/CodeSystem-kdl-properties.json"

if [ ! -f "$source_file" ]; then
  echo "Expected CodeSystem JSON source not found: $source_file"
  exit 1
fi

rm -f "$target_file"

node scripts/flatten-codesystem.js "$source_file" "$target_file"

if [ ! -f "$target_file" ]; then
  echo "Expected flattened CodeSystem JSON was not generated: $target_file"
  exit 1
fi

echo "Flattened CodeSystem JSON generated: $target_file"
