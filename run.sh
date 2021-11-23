#!/bin/sh
set -e

template_path="$1"

template=$(cat "$template_path")

aws cloudformation create-stack \
  --stack-name test \
  --template-body "$template"