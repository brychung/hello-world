import requests
url = "https://gdata.youtube.com/feed/trending?alt=json"
response = requests.get(url)
data = response.json()
for video in data['feed']['entry'][0:6]:
	print(video['title']['$t'])