class ApplicationController < ActionController::Base
  before_action :authenticate_user!
#  before_action :configure_permitted_parameters, if: :devise_controller?
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
#  def configure_permitted_parameters
#     devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
#  end
end
