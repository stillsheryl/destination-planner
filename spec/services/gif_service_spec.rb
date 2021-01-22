require 'rails_helper'

describe "GifService" do
  it "returns weather data" do
    gif = GifService.gif_by_weather("partly cloudy")

    expect(gif).to be_a(Hash)

  end
end
