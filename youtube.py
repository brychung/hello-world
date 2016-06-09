import json
from urllib.request import urlopen
url = "https://gdata.youtube.com/feeds/api/users/default?v=2&alt=jsonc"
response = urlopen(url)
contents = response.read()
text = contents.decode('utf8')
data = json.loads(text)
for video in data['feed']['entry'][0:6]:
    print(video['title']['$t'])
