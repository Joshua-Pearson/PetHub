class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access Denied"
    redirect_to root_path
  end

   before_filter do
     return if !(request.post? or request.patch? or request.put?)
     resource = controller_path.singularize.gsub('/', '_').to_sym
     method = "#{resource}_params"
     params[resource] &&= send(method) if respond_to?(method, true)
   end

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
end
