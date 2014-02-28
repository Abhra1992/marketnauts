class Api::V1::StocksController < ApplicationController
  def index
    stocks = Stock.all
    render json: stocks
  end

  def show
    stock = Stock.find_by_name params[:id]
    render json: stock
  end
end
