#!/bin/bash

echo -e "Checking status of lambda code."
while [ "$command" != "InProgress" ]
   command=`aws lambda get-function --function-name mylambdafunction-uat --query 'Configuration.LastUpdateStatus'| cut -b 2-11`
   if $command == "Successful"
      then break
do
  sleep 2
  command=`aws lambda get-function --function-name mylambdafunction-uat --query 'Configuration.LastUpdateStatus'| cut -b 2-11 `
  echo $command
done