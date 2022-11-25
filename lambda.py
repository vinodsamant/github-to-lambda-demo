import boto3
import time

client = boto3.client('lambda')

funcName = 'mylambdafunction-uat'
retries = 1
MAX_RETRIES = 10
retry = True

state = "InProgress"

while (retry and (retries < MAX_RETRIES)):
    state = client.get_function(FunctionName=funcName)['Configuration']['LastUpdateStatus']
    if state == 'Successful':
        retry = False
    elif state == 'InProgress':
        time.sleep(2^retries * 1)
        retry = True
    # ELSE IF status = THROTTLED
    #     retry = true
    else:
        # Some other error occurred, so stop calling the API.
        retry = False
        state = 'failed'
    
    retries = retries + 1
    print(state)


