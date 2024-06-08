import requests
from langchain_community.document_loaders import UnstructuredHTMLLoader
from langchain_community.document_loaders import WebBaseLoader
import urllib.parse

from bs4 import BeautifulSoup
S = requests.Session()

URL = "https://en.wikipedia.org/w/api.php"

SEARCHPAGE = "Nelson Mandela"

PARAMS = {
    "action": "query",
    "format": "json",
    "list": "search",
    "srsearch": SEARCHPAGE
}

R = S.get(url=URL, params=PARAMS)
DATA = R.json()

PARAMS2 = {
    "action": "parse",
    "page": "delhi",
    "format": "json"
}
full_url = f"{URL}?{urllib.parse.urlencode(PARAMS2)}"

R2 = S.get(url=URL, params=PARAMS2)
DATA2 = R2.json()
soup = BeautifulSoup(DATA2["parse"]["text"]["*"], features="html.parser")
print(DATA2["parse"]["text"]["*"], "info about delhi")
print(soup.get_text(), "soupStuff")
# loader = UnstructuredHTMLLoader(DATA2["parse"]["text"]["*"])
# data = loader.load()
# loader = WebBaseLoader(
#     web_paths=("https://lilianweng.github.io/posts/2023-06-23-agent/",),
#     bs_kwargs=PARAMS2,
# )
loader = WebBaseLoader(
    web_paths=(full_url,),
    )
data = loader.load()
print(data, "loaded data")
if DATA['query']['search'][0]['title'] == SEARCHPAGE:
    print("Your search page '" + SEARCHPAGE + "' exists on English Wikipedia", DATA['query']['search'])