require 'spec_helper'
require './lib/converter'

describe Currency do
  it "convert" do
    json = JSON.parse(File.read("./spec/fixtures/currency_list.json"))
    currency_from, currency_to = json['currency_list'].sample(2)
    quantity = rand(1..9999)

    value = Currency::convert currency_from, currency_to, quantity

    expect(value.is_a? Numeric).to eql(true)
    expect(value != 0).to eql(true)
  end
end
