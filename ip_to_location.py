import requests


# convert ip to city
def getCity(ip_address):
  try:
    api_url = f'https://freegeoip.live/json/{ip_address}'
    response = requests.get(api_url)

    if response.status_code == 200:
       location_data = response.json()
       city = location_data.get('city')
       print(city)
       return city
    else:
      print(f"Request failed with status code: {response.status_code}")

  except requests.RequestException as e:
    print(f'Error Occured {str(e)}')


# convert ip to country name
def getCountry(ip_address):
  try:
    api_url = f'https://freegeoip.live/json/{ip_address}'
    response = requests.get(api_url)

    if response.status_code == 200:
       location_data = response.json()
       country = location_data.get('country_name')
       print(country)
       return country
    else:
      print(f"Request failed with status code: {response.status_code}")

  except requests.RequestException as e:
    print(f'Error Occured {str(e)}')
