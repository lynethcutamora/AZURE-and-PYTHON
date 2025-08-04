import os
import pandas as pd
import pyarrow.parquet as pq

from azure.storage.blob import BlobServiceClient
'''
#account key
account_name='lyndatalake'
account_key='4BUFb5dnYOLVuhIeDHosXFJfpUwfhboChlmHPa4WCZwFfof8JldDqmpWOnFcnAkw2rLyeiX0Y9zB+AStV5sPtQ=='
container_name='dlakecontainer'

# Create the BlobServiceClient object
connection_string = f"DefaultEndpointsProtocol=https;AccountName={account_name};AccountKey={account_key};EndpointSuffix=core.windows.net"
blob_service_client = BlobServiceClient.from_connection_string(connection_string)

# List blobs in the container
container_client = blob_service_client.get_container_client(container_name)
blobs_list = container_client.list_blobs()

for blob in blobs_list:
    print(blob.name)
'''

'''    
#read file    
url="https://lyndatalake.blob.core.windows.net/dlakecontainer/sample.parquet"
file='sample.parquet'

# Read the Parquet file
df = pd.read_parquet('sample2.parquet', engine='fastparquet')


# Display the DataFrame
print(df)
'''

files_and_dirs=os.listdir('.')
files=[f for f in files_and_dirs if os.path.isfile(f)]

print("Files in current directory:")
for file in files: print(file)

parquet_file='ActivityLog01.parquet'
table=pq.read_table(parquet_file)

df=table.to_pandas()

print(df)

