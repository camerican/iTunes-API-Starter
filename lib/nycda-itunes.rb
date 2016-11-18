#require 'open-uri'
require 'net/http'
require 'json'

module ITunes

  def itunes_search term
    process_itunes_data JSON.parse(itunes_api_query term)
  end

  private

  def itunes_api_query term
    term = URI.encode(term.gsub(' ','+'))
    Net::HTTP.get(URI("http://itunes.apple.com/search?term=#{term}&entity=song"))
  end

  def process_itunes_data data
    data.reduce([]) do |result,track|
      result.push({ trackName: track["trackName"],
                    trackId: track["trackId"] })
    end
  end
end






