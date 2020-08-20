=begin
  This library is provided without warranty under the MIT license
  Created by Dustin Tinney <dustin@testdouble.com>
=end

class ForexDataClient
  def initialize(api_key)
    @api_key = api_key
  end

  def get_rate(to:, from:)
    return 1 if to == from

    sleep(rand(0.9))
    start = to[-1].ord
    rand(start..(start+0.2))
  end

  def convert(to:, from:, amount:)
    amount * get_rate(to: to, from: from)
  end
end
