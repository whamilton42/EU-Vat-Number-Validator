require 'net/http'
require 'uri'

module HttpFetcher

  def fetch_url(url)
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
    response.body
  end
  
  def string_to_boolean(string)
    case string.downcase
    when "true"   then true
    when "false"  then false
    end
  end
  
end