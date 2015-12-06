require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'YahooFinance'

get '/' do
  erb :home
end

get '/stockdata' do
  @stock = params[:symbol].upcase

  redirect to('/') if @stock == ''
    stock_data = YahooFinance::get_quotes(YahooFinance::StandardQuote, params[:symbol]);
    @price = stock_data[params[:symbol]].lastTrade
    @lastTradeWithTime = stock_data[params[:symbol]].lastTradeWithTime
    @dayRange = stock_data[params[:symbol]].dayRange
  
  erb :stockdata
end

