class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def respond(action_name = nil, controller_name = nil)
    if action_name.nil?
      action_name = params[:action_name]
    end
    if controller_name.nil?
      controller_name = params[:controller_name]
    end

    if request.xhr?
      render "/#{controller_name}/#{action_name}.js.erb"
    else
      render "/#{controller_name}/#{action_name}.html.haml"
    end

  end

end
