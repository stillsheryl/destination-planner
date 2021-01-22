require 'rails_helper'

describe "WeatherService" do
  it "returns weather data" do
    weather = WeatherService.weather_by_city("Denver")

    expect(weather).to be_a(Hash)
    expect(weather).to have_key(:weather)

    expect(weather[:weather].first).to be_a(Hash)

    expect(weather[:weather].first[:main]).to be_a(String)

    expect(weather).to have_key(:main)
    temps = weather[:main]
    expect(temps[:temp]).to be_a_kind_of(Numeric)
    expect(temps[:temp_min]).to be_a_kind_of(Numeric)
    expect(temps[:temp_max]).to be_a_kind_of(Numeric)
  end
end
