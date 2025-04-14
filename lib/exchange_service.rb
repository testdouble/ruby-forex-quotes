
class ExchangeService
  def self.valid_currency?(currency)
    ['USD', 'JPY'].includes?(currency)
  end

  def self.get_rate(to, from)
    # Note: This is set to mimic a 3rd party api that is making an external request 
    raise "We're going down" if (rand(20) == 1)

    sleep(rand(3))
    rand(1.45..1.5)
  end
end