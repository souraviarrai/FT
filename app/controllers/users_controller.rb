class UsersController < ApplicationController
  before_action :check_if_admin
  def my_portfolio
    @tracked_stocks = current_user.stocks
  end
end
