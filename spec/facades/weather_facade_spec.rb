require 'rails_helper'

describe "WeatherFacade" do
  it "returns a weather object" do
    forecast = WeatherFacade.forecast("Denver")

    expect(forecast).to be_a(Weather)
    
    expect(forecast.current).to be_an(Integer)
    expect(forecast.high).to be_an(Integer)
    expect(forecast.low).to be_an(Integer)
    expect(forecast.summary).to be_a(String)
  end
end
