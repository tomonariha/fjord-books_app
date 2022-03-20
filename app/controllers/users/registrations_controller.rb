class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  def after_update_path_for(resource)
    users_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :post_code, :address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile, :post_code, :address])
  end
end