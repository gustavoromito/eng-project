class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :remember_me])
  end

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
    end

  request = lambda do |*|
    request.env['omniauth.origin'] || root_path
  end
  end
  
  def after_sign_in_path_for(_resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || :posts
  end

end
