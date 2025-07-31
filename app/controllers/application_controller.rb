class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [
    :first_name, :last_name, :email, :password, :password_confirmation
  ])

  devise_parameter_sanitizer.permit(:account_update) do |user_params|
      if current_user&.admin?
        user_params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :admin)
      else
        user_params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
      end
    end
  end

  def check_if_admin
    redirect_to root_path unless current_user.admin?
  end
end
