#!/bin/bash

echo -e "Checking status of lambda code."
command=`InProgess`
while [ "$command" != "Successful" ]
do 
   command=`aws lambda get-function --function-name mylambdafunction-uat --query 'Configuration.LastUpdateStatus'| cut -b 2-11`
   echo $command
done