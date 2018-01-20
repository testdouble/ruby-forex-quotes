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
gem install forex_quotes
```

## Usage

### Instantiate the client
```ruby
#You can get an API key for free at 1forge.com
client = ForexDataClient.new('YOUR_API_KEY')
```

### Get the list of available symbols:

```ruby
client.getSymbols
```
### Get quotes for specified symbols:
```ruby
client.getQuotes(["EURUSD", "GBPJPY"])
```

### Convert from one currency to another:
```ruby
client.convert('EUR', 'USD', 100)
```


### Check if the market is open:
```ruby
client.getMarketStatus
```

### Check your usage / quota limit:
```ruby
client.quota
```

## Contributing
Thank you for considering contributing! Any issues, bug fixes, suggestions, improvements or help in any other way is always appreciated.  Please feel free to open an issue or create a pull request.

## Support and Contact
Please contact me at contact@1forge.com if you have any questions or requests.

## License and Terms
This library is provided without warranty under the MIT license.
