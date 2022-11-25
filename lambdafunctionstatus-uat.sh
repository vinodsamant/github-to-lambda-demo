#!/bin/bash

while :
do
	command=`aws lambda get-function --function-name mylambdafunction-uat --query 'Configuration.LastUpdateStatus'| cut -b 2-11`
        read command
	if [ "$command" != "InProgress" ]
	then
		break
	fi
	
	echo $command
   
done