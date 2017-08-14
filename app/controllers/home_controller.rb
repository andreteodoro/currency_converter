class HomeController < ApplicationController
  def index
  end

  def convert
    value = Currency::convert params[:currency_from], params[:currency_to], params[:quantity].to_f
    render json: {"value": value}
  end
end
