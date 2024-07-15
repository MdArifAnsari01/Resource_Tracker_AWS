#! /bin/bash

######################################################################
# CREATED BY : MD ARIF ANSARI
# DATE : 15/07/24
# OBJECTIVE : LIST THE AWS RESOURCES
######################################################################

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId"

# list IAM users
echo "Print list of IAM users"
aws iam list-users | jq ".Users[].UserName"

# list lambda functions
echo "Print list of lambda functions"
aws lambda list-functions | jq ".Functions[].FunctionName"
