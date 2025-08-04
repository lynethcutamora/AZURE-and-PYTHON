import pandas as pd

url = "https://lynappstore40005054.blob.core.windows.net/data/Teradyne_Egencia_US_20240503.csv"

response = pd.read_csv(url, sep=';')
pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)
print(response)