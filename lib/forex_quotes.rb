require 'http'
require 'json'

class ForexDataClient
  def initialize(api_key)
    @api_key = api_key
  end

  def fetch(api_call)
    JSON.parse(HTTP.get("https://forex.1forge.com/1.0.2/" + api_call + "&api_key=" + @api_key))
  end

  def quota()
    self.fetch('quota?cache=false')
  end

  def getSymbols()
    self.fetch('symbols?cache=false')
  end

  def getQuotes(symbols)
    self.fetch('quotes?cache=false&pairs=' + symbols.join(','))
  end

  def convert(from, to, quantity)
    self.fetch('convert?cache=false&from=' + from + '&to=' + to + '&quantity=' + quantity.to_s)
  end

  def getMarketStatus()
    self.fetch('market_status?cache=false')
  end
end