class WeatherFacade
  def self.forecast(city)
    weather = WeatherService.weather_by_city(city)

    Weather.new(weather)
  end
end
