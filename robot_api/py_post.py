import requests

url = 'https://gorest.co.in/public-api/users'
myjson = {'id':30,'name':'Syed','email':'syed_man1@gmaill.io','gender':'Male','status':'Active','created_at':'2021-01-14T03:50:03.564+05:30','updated_at':'2021-01-14T03:50:03.564+05:30'}
headers = {"Authorization": "Bearer bba09dfca9d3e2a1944c916bd04efaf29f033e8b862c9e26145251b2ad909fb7"}
x = requests.post(url, json = myjson,headers=headers)

#print the response text (the content of the requested file):

print(x.text)
print(x.headers)
