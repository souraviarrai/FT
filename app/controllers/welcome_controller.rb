class WelcomeController < ApplicationController
  before_action :check_if_admin
  def index
    @name = current_user
  end
end
