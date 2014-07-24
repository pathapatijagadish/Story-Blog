class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #rescue_from ActionController::RoutingError, :with => :render_not_found
  #resue_from StandardError, :with => :render_server_error

  protected
    def render_not_found
      render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
    end

    def render_server_error
      render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
    end
end
