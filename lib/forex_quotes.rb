=begin
  This library is provided without warranty under the MIT license
  Created by Dustin Tinney <dustin@testdouble.com>
=end

require_relative 'exchange_service'

class ExchangeServiceDownError < StandardError; end

class ForexDataClient
  def initialize(api_key)
    @api_key = api_key
  end

  def get_rate(to:, from:)
    begin
      rate = to == from ? 1 : exchange_rate(to, from)
      { to.to_sym => rate}
    rescue
      raise ExchangeServiceDownError.new("Exchange Service is offline.")
    end
  end

  def convert(to:, from:, amount:)
    begin
      total = amount * exchange_rate(to, from)
      { to.to_sym => total}
    rescue
      raise ExchangeServiceDownError.new("Exchange Service is offline.")
    end
  end

  private

  def exchange_rate(to, from)
    ExchangeService.get_rate(to, from)
  end
end
