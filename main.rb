#require 'open-uri'
require 'net/http'
require 'json'

def itunes_api_query term
  term = URI.encode(term.gsub(' ','+'))
  Net::HTTP.get(URI("http://itunes.apple.com/search?term=#{term}&entity=song"))
end

def itunes_search term
  JSON.parse(itunes_api_query term)
end

def process_itunes_data data
  # result = []
  # data.each do |track|
  #   result.push( { trackName: track["trackName"],
  #                  trackId: track["trackId"] } )
  # end
  # result
  data.reduce([]) do |result,track|
    result.push({ trackName: track["trackName"],
                  trackId: track["trackId"] })
  end
end







