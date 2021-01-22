require 'rails_helper'

describe Weather do
  it "creates a weather object" do
    weather = Weather.new({:coord=>{:lon=>-104.9847, :lat=>39.7392},
       :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03n"}],
       :base=>"stations",
       :main=>{:temp=>33.55, :feels_like=>27.9, :temp_min=>30.99, :temp_max=>36, :pressure=>1026, :humidity=>55},
       :visibility=>10000,
       :wind=>{:speed=>1.01, :deg=>58, :gust=>4},
       :clouds=>{:all=>33},
       :dt=>1610074065,
       :sys=>{:type=>3, :id=>2008367, :country=>"US", :sunrise=>1610029260, :sunset=>1610063481},
       :timezone=>-25200,
       :id=>5419384,
       :name=>"Denver",
       :cod=>200}
      )

    expect(weather).to be_a(Weather)
    expect(weather.current).to eq(34)
    expect(weather.high).to eq(36)
    expect(weather.low).to eq(31)
    expect(weather.summary).to eq("scattered clouds")
  end
end
