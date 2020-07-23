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
      rates[symbol] = symbol.start_with?(symbol[3..]) ? 1 : rate(symbol)
    end
    return rates
  end

  def convert(from, to, quantity)
    quantity * (to == from ? 1 : rate(to))
  end

  private

  def rate(type)
    start = type[-1].ord
    rand(start..(start+0.5))
  end
end
