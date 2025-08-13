<<<<<<< HEAD
import pandas as pd

url = "https://lynappstore40005054.blob.core.windows.net/data/Teradyne_Egencia_US_20240503.csv"

response = pd.read_csv(url, sep=';')
pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)
=======
import pandas as pd

url = "https://lynappstore40005054.blob.core.windows.net/data/Teradyne_Egencia_US_20240503.csv"

response = pd.read_csv(url, sep=';')
pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)
>>>>>>> 9f0b5ffe1f26a21c1aaa5f0f39e46d394bcc364a
print(response)