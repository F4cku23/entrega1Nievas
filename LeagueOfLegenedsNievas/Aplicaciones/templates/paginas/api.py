from urllib.request import urlopen
import json
import requests
from urllib import request

from django.http import HttpResponse
from pkg_resources import require

#archivo python para crear json

url= requests.get('http://ddragon.leagueoflegends.com/cdn/12.11.1/data/en_US/champion.json')
champs={}
champs['campeones']=[]

data=url.json()

result=data['data']
pag='https://www.leagueoflegends.com/en-us/champions/'
for i in result:
    x=i
    #print(i)
    x=result[x]
    title=x['title']
    historia=x['blurb']
    a=pag+i.lower()
    #print(nombre)
    champs['campeones'].append({
        "name": i,
        "title": title,
        "historia": historia,
        "enlace": a
    })
    all=i + " - " + title + " - " + historia + " - " + a
    print(all)
    
    with open('champs.json', 'w') as file:
        json.dump(champs, file, indent=2)