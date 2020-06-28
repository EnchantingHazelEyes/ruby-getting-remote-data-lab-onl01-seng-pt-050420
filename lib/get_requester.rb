require 'net/http'
require 'open-uri'
require 'json'
 
class GetRequester
  
   URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
 
  def get_response_body
    
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
  #formatted JSON
  get = JSON.parse(get_response_body)
 #   get_response_body.collect do |get_request|
  #   get_request["agency"]  
   #  end
  end
end 

get_request = GetRequester.new.parse_json


