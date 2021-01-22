class GifService
  def self.gif_by_weather(keyword)
    # response = Faraday.get("http://api.giphy.com/v1/gifs/search") do |q|
    #   q.params["api_key"] = ENV['GIF_API_KEY']
    #   q.params["q"] = keyword
    # end

    response = Faraday.get("http://api.giphy.com/v1/gifs/search?api_key=#{ENV['GIF_API_KEY']}&q=#{keyword}")

    JSON.parse(response.body, symbolize_names:true)
  end
end
