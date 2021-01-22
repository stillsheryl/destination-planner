class Weather
  attr_reader :current, :high, :low, :summary
  def initialize(data)
    @current = data[:main][:temp].round
    @high = data[:main][:temp_max].round
    @low = data[:main][:temp_min].round
    @summary = data[:weather].first[:description]
  end
end
