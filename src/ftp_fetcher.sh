#!/bin/bash

set -e
set -x

mkdir mirror
cd mirror
wget --mirror --no-verbose "ftp://${username}:${password}@${ftp_url}"
find
OUTPUT_DIR="${DX_PROJECT_CONTEXT_ID}:/$(dx describe ${DX_JOB_ID} --json | jq --raw-output .folder)"
dx mkdir "$OUTPUT_DIR"
dx cd "$OUTPUT_DIR"
dx upload --recursive .
