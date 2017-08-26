require 'rails_helper'

RSpec.describe "Convert Currency Process", :type => :feature do
  it "convert value" do
    visit '/'
    within("#converter_form") do
      select('EUR', from: 'currency_from')
      select('USD', from: 'currency_to')
      fill_in 'amount', with: '10'
    end
    click_button 'CONVERTER'

    expect(page).to have_content("value")
  end
end
