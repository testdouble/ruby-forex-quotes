=begin
  This library is provided without warranty under the MIT license
  Created by Dustin Tinney <dustin@testdouble.com>
=end

class ForexDataClient
  def initialize(api_key)
    @api_key = api_key
  end

  def get_quotes(symbols)
    rates = {}
    symbols.map do |symbol|
      rates[symbol] = rate
    end
    return rates
  end

  def convert(from, to, quantity)
    return quantity * rate
  end

  private

  def rate
    rand(90.1..120.2)
  end
end
