# ruby-forex-quotes

ruby-forex-quotes is a Ruby Library for fetching realtime forex quotes

# Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
    - [List of Symbols available](#get-the-list-of-available-symbols)
    - [Get quotes for specific symbols](#get-quotes-for-specified-symbols)
    - [Convert from one currency to another](#convert-from-one-currency-to-another)
- [Contributing](#contributing)
- [Support / Contact](#support-and-contact)
- [License / Terms](#license-and-terms)

## Requirements
* An API key which you can obtain for free at http://1forge.com/forex-data-api

## Installation
```
gem 'forex_quotes', github: 'testdouble/ruby-forex-quotes', branch: 'main'
```

## Usage

### Instantiate the client
```ruby
# You can get an API key for free at 1forge.com
client = ForexDataClient.new('YOUR_API_KEY')
```

### Get the rate to convert from one currency to another
```ruby
client.get_rate(from: 'USD', to: 'JPY')
# { :JPY => 1049 }
```

### Convert a specific amount from cents to yen.
```ruby
client.convert(from: 'USD', to: 'JPY', amount: 100)
# { :JPY => 14900 }
```

## License and Terms
This library is provided without warranty under the MIT license.
