
class ExchangeService
  def self.valid_currency?(currency)
    ['USD', 'JPY'].includes?(currency)
  end

  def self.get_rate(to, from)
    # Note: This is set to mimic a 3rd party api that is making an external request 
    raise "We're going down" if (rand(20) == 1)

    sleep(rand(2))
    start = to[-1].ord
    rand(start..(start+0.2))
  end
end