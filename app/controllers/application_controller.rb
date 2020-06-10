class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_account_update_parameters, if: :devise_controller?
  before_action :configure_sign_up_parameters, if: :devise_controller?

  protected

  def configure_account_update_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: %w[first_name last_name])
  end

  def configure_sign_up_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %w[first_name last_name])
  end
end
