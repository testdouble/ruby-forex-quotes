=begin
  This library is provided without warranty under the MIT license
  Created by Jacob Davis <jacob@1forge.com>
=end

require 'forex_quotes'

client = ForexDataClient.new('vJHZqgJf7V3tvd7BA3MGThaB3NqVX7FD')

p client.getQuotes(["EURUSD", "GBPJPY"])
p client.convert('EUR', 'USD', 100)