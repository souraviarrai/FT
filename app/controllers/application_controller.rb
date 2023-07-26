class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email,:password,:password_confirmation, :admin)
    end
  end

  def after_sign_in_path_for(resource)
    current_user.admin? ? admin_dashboard_index_path : root_path
  end

  def check_if_admin
    redirect_to admin_dashboard_index_path if current_user.admin?
  end
end
