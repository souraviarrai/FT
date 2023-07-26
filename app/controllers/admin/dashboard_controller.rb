class Admin::DashboardController < ApplicationController
  layout 'admin/base'
  def index
    @stocks = Stock.all
  end
  def show
    @stock = Stock.find(params[:id])
  end
  def new
    @stock = Stock.new
  end
  def create
    @stock = Stock.new(stock_params)

    if @stock.save
      redirect_to admin_dashboard_path(@stock)
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @stock = Stock.find(params[:id])
  end
  def update
    @stock = Stock.find(params[:id])
    if @stock.update(stock_params)
      redirect_to admin_dashboard_path(@stock)
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy
    redirect_to admin_dashboard_index_path, status: :see_other
  end

  private
  def stock_params
    params.require(:stock).permit(:ticker, :name)
  end
end