#!/bin/sh
set -e

region="$1"
template_path="$2"

template=$(cat "$template_path")

aws --region "$region" cloudformation create-stack \
  --stack-name test \
  --template-body "$template"