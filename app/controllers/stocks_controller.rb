class StocksController < ApplicationController

  def search
    if params[:stock].present?
      # binding.pry
      # @stock = Stock.new_lookup(params[:stock])
      @stock = Stock.check_db(params[:stock])
      if @stock
        render 'users/my_portfolio'
      else
        flash[:alert] = "please enter a valid symbol to search"
        redirect_to my_portfolio_path
      end
    else
      flash[:alert] = "Please enter a symbol to search"
      redirect_to my_portfolio_path
    end
  end
end

