class StockController < ApplicationController

  def search
  end

  def result
      @stock = params[:symbol].upcase

      stock_data = YahooFinance::get_quotes(YahooFinance::StandardQuote, params[:symbol]);
      @price = stock_data[params[:symbol]].lastTrade
      @lastTradeWithTime = stock_data[params[:symbol]].lastTradeWithTime
      @dayRange = stock_data[params[:symbol]].dayRange
  end
end