class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.   
  # For APIs, you may want to use :null_session instead.   
  protect_from_forgery with: :null_session
  before_filter :set_user_if_not_defined
  after_filter :set_csrf_cookie_for_ng  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def set_user_if_not_defined
    @current_user = current_user || User.first
  end

  def intercept_html_requests     
    redirect_to('/') if request.format == Mime::HTML   
  end

  def set_csrf_cookie_for_ng     
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?   
  end      

  rescue_from ActionController::InvalidAuthenticityToken do |exception|     
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?     
    message = 'Rails CSRF token error, please try again'     
    render_with_protection(message.to_json, {:status => :unprocessable_entity}) 
  end

  def render_with_protection(object, parameters = {})
    render parameters.merge(content_type: 'application/json', text: ")]}',\n" + object.to_json)
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, 
      :password_confirmation, :username) }

     devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] }, :email, :password, 
     :password_confirmation, :current_password, :username) }
    end

    def verified_request?
      super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
    end  
end
