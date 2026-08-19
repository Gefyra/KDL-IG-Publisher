#!/usr/bin/env bash

set -euo pipefail

# Paths are derived from this script's own location rather than the working
# directory, so it runs the same from the repository root, from scripts/, in
# the dev container and in CI.
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

source_file="${repo_root}/output/CodeSystem-kdl.json"
target_file="${repo_root}/CodeSystem-kdl-properties.json"

if [ ! -f "$source_file" ]; then
  echo "Expected CodeSystem JSON source not found: $source_file"
  exit 1
fi

rm -f "$target_file"

node "${repo_root}/scripts/flatten-codesystem.js" "$source_file" "$target_file"

if [ ! -f "$target_file" ]; then
  echo "Expected flattened CodeSystem JSON was not generated: $target_file"
  exit 1
fi

echo "Flattened CodeSystem JSON generated: $target_file"