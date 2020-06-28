require 'net/http'
require 'open-uri'
require 'json'

URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
 
class GetRequester
 
 URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
 
  def get_response_body
    
    uri = URI.parse(URL)
    response = Net::HTTP.get_response_body(uri)
    response.body
  end
  
  def parse_json
  #formatted JSON
  get = JSON.parse(self.get_response)
    get_requester.collect do |get_request|
     get_request["agency"]  
     end
  end
end 

get_request = GetRequester.new.parse_json


