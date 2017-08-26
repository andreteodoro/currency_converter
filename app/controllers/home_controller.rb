class HomeController < ApplicationController
  def index
  end

  def convert
    value = Currency::convert params[:currency_from], params[:currency_to], params[:amount].to_f
    render json: {"value": value}
  end
end
