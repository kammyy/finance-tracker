class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: 'Tpk_877258580c924d4780f881e4c20bc946',
      endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(ticker_symbol)
  end

end
