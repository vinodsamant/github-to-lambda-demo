#!/bin/bash
 
 ## For Status Check of Lambda Function
while :
do
	command=`aws lambda get-function --function-name $Lambda_Function --query 'Configuration.LastUpdateStatus'| cut -b 2-11`
        read command
	if [ "$command" != "InProgress" ]
	then
		break
	fi
	
	echo $command
   
done