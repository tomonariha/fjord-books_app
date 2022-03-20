# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(_resource)
    books_path
  end

  def after_sign_out_path_for(_resource)
    users_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name profile post_code address])
  end
end
