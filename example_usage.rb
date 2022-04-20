require 'forex_quotes'

client = ForexDataClient.new('vJHZqgJf7V3t')

puts client.get_rate(from: 'USD', to: 'JPY')
puts client.convert(from: 'USD', to: 'JPY', amount: 100)