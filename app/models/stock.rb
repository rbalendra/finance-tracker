class Stock < ApplicationRecord
  
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: 'Tpk_86383a1fb1fb441fb9a0f102a1fea768',
                                        secret_token: 'Tsk_035b6e28e49443e7bfb13dcf3f00c116',
                                            endpoint: 'https://sandbox.iexapis.com/stable')
      client.price(ticker_symbol)
  end

end
