class StocksController < ApplicationController
  
  def search
    if params[:stock]
      @stock = Stock.find_by_ticker(params[:stock])
      @stock ||= Stock.new_from_lookup(params[:stock])
    end 
    if @stock
      #render json: @stock
      render 'users/my_portfolio'
    else
      @lookup_error = true
      render 'users/my_portfolio'      
    end
  end
  
  
  
end