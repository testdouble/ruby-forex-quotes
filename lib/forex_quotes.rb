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
      rates[symbol] = rate(symbol)
    end
    return rates
  end

  def convert(from, to, quantity)
    return quantity * rate(to)
  end

  private

  def rate(type)
    start = type[-1].ord
    rand(start..(start+1.5))
  end
end
