require 'eu/http_fetcher'

# See docs at http://isvat.appspot.com/

module EuVatNumberValidator
  class IsVat
    include HttpFetcher
    
    def is_valid?(country_code, number)
      url = "http://isvat.appspot.com/#{country_code.upcase}/#{number}/"
      string_to_boolean(fetch_url(url))
    end
 
  end
end