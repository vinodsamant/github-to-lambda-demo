#!/bin/bash

echo -e "Checking status of lambda code."
command=`aws lambda get-function --function-name myfirstlambda --query 'Configuration.LastUpdateStatus'| cut -b 2-11 `
while [ "$command" != "Successful" ]
do 
   echo "$command"
done