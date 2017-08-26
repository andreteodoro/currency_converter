require 'rest-client'
require 'json'

module Currency
  def self.convert currency_from, currency_to, amount
    begin
      res = RestClient.get "http://api.fixer.io/latest?base=#{currency_from}&symbols=#{currency_to}"
      value = JSON.parse(res.body)['rates'][currency_to]
      return (value * amount).round(2)
    rescue
      return 'Some problem happen converting the values!'
    end
  end
end
