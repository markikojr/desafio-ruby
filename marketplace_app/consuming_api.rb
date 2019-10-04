# Rest client and json requirements
require 'rest-client'
require 'json'

# Define URL
url = 'https://www.fossil.com.br/api/catalog_system/pub/products/search/'
#url = 'http://www.timex.com.br/api/catalog_system/pub/products/search/'
#url = 'https://www.schumann.com.br/api/catalog_system/pub/products/search/'

# Get method for rest client
resp = RestClient.get "#{url}"

# Json parse
response = JSON.parse(resp.body)

# Status code
puts resp.code

# Print Json
puts JSON.parse(resp.body)
