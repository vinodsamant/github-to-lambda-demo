import pandas as pd

def lambda_handler(event, context):
<<<<<<< HEAD
    d = {'col1': [1,2], 'col2': [3,8]}
=======
    d = {'col1': [1,2], 'col2': [3,11]}
>>>>>>> dev
    df = pd.DataFrame(data=d)
    print(df)
    print('Done x1.1')

