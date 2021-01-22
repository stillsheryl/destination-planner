class WeatherService
  def self.weather_by_city(city)
    response = Faraday.get("http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{ENV['WEATHER_API_KEY']}&units=imperial")

    JSON.parse(response.body, symbolize_names:true)
  end
end
