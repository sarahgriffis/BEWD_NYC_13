require 'rest-client'
require 'json'
require 'pry'

url = 'http://api.whitehouse.gov/v1/petitions.json'
response = RestClient.get(url)
parsed_response = JSON.parse(response)

#binding.pry


titles = parsed_response['results'].map { |petitions| petitions['title']}

titles.each { |title| puts title}
