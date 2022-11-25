#!/bin/bash

echo -e "Checking sttaus of lambda code."
command=`aws lambda get-function --function-name mylambdafunction-dev --query 'Configuration.LastUpdateStatus'| cut -b 2-11 `
while [ "$command" != "Successful" ]
do 
   echo "$command"
done
