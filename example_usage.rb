=begin
  This library is provided without warranty under the MIT license
  Created by Jacob Davis <jacob@1forge.com>
=end

require 'forex_quotes'

client = ForexDataClient.new('vJHZqgJf7V3t')

puts client.get_rate(from: 'USD', to: 'JPY')
puts client.convert(from: 'USD', to: 'JPY', amount: 100)