# ruby-forex-quotes

ruby-forex-quotes is a Ruby Library for fetching realtime forex quotes

# Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
    - [List of Symbols available](#get-the-list-of-available-symbols)
    - [Get quotes for specific symbols](#get-quotes-for-specified-symbols)
    - [Convert from one currency to another](#convert-from-one-currency-to-another)
- [Support / Contact](#support-and-contact)
- [License / Terms](#license-and-terms)

## Requirements
* Ruby
* An API key which you can obtain for free at http://1forge.com/forex-data-api

## Installation
gem install forex_quotes

## Usage

### Instantiate the client
```ruby
#You can get an API key for free at 1forge.com
client = ForexDataClient.new('YOUR_API_KEY')
```

### Get the list of available symbols:

```ruby
client = ForexDataClient.new('YOUR_API_KEY')
#Returns an array of symbols, eg: ['EURUSD', 'GBPJPY']
client.getSymbols
```
### Get quotes for specified symbols:
```ruby
client = ForexDataClient.new('YOUR_API_KEY')

=begin
[
  {
    "symbol"=>"EURUSD", 
    "timestamp"=>1499461058, 
    "price"=>1.14008
  }, 
  {
    "symbol"=>"GBPJPY", 
    "timestamp"=>1499461058, 
    "price"=>146.787339
  }
]
=end
client.getQuotes(["EURUSD", "GBPJPY"])
```

### Convert from one currency to another:
```ruby
client = ForexDataClient.new('YOUR_API_KEY')
=begin
{
  "value" => 114.008, 
  "text" => "100 EUR is worth 114.008 USD", 
  "timestamp" => 1499605679
}
=end
client.convert('EUR', 'USD', 100)
```


### Check if the market is open:
```ruby
client = ForexDataClient.new('YOUR_API_KEY')
#{"market_is_open" => false}
client.getMarketStatus
```

### Check your usage / quota limit:
```ruby
client = ForexDataClient.new('YOUR_API_KEY')
=begin
{
  "quota_used" => 6521, 
  "quota_limit" => "unlimited", 
  "quota_remaining" => "unlimited", 
  "hours_until_reset" => 15
}
=end
client.quota
```

## Support and Contact
Please contact me at contact@1forge.com if you have any questions or requests.

## License and Terms
This library is provided without warranty under the MIT license.
