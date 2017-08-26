require 'spec_helper'
require './lib/converter'

describe Currency do
  before do
    json = JSON.parse(File.read("./spec/fixtures/currency_list.json"))
    @currency_from, @currency_to = json['currency_list'].sample(2)
    @amount = rand(1..9999)
  end

  it "convert" do
    value = Currency::convert @currency_from, @currency_to, @amount

    expect(value.is_a? Numeric).to eql(true)
    expect(value != 0).to eql(true)
  end
end
