require 'forex_quotes'

client = ForexDataClient.new('vJHZqgJf7V3tvd7BA3MGThaB3NqVX7FD')

p client.quota
p client.getSymbols
p client.getQuotes(["EURUSD", "GBPJPY"])
p client.convert('EUR', 'USD', 100)
p client.getMarketStatus