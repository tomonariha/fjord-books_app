# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  def after_update_path_for(_resource)
    users_path
  end

  protected

  def configure_permitted_parameters
    keys = %i[name post_code address profile]
    devise_parameter_sanitizer.permit(:sign_up, keys: keys)
    devise_parameter_sanitizer.permit(:account_update, keys: keys)
  end
end
