#!/bin/bash
ENVIRONMENT=$1
BITBUCKET_BUILD_NUMBER=$2
BITBUCKET_PARALLEL_STEP=$3
S3_BUCKET_NAME="develop-coverage-assets.convosight.com"
echo "s3://${S3_BUCKET_NAME}/${ENVIRONMENT}/${BITBUCKET_BUILD_NUMBER}/${BITBUCKET_PARALLEL_STEP}.json"
aws s3 cp .nyc_output/*.json "s3://${S3_BUCKET_NAME}/${ENVIRONMENT}/${BITBUCKET_BUILD_NUMBER}/${BITBUCKET_PARALLEL_STEP}.json"