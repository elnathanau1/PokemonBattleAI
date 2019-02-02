import urllib
from bs4 import BeautifulSoup
import numpy as np

# format = "ou"
# smogon_link = f"https://www.smogon.com/dex/sm/formats/{format}/"

# print(urllib.request.urlopen(smogon_link).read())

file_path = "Resources/gen7ou-0.txt"

print(np.loadtxt(file_path, skiprows=5, dtype="str", delimiter="|"))
