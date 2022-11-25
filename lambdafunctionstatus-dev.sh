#!/bin/bash

#echo -e "Checking status of lambda code."
#command=`aws lambda get-function --function-name mylambdafunction-dev --query 'Configuration.LastUpdateStatus'| cut -b 2-11 `
#while [ "$command" != "Successful" ]
#do 
#   echo "$command"
#done

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