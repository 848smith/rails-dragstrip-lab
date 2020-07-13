class ApplicationController < ActionController::Base
    helper_method :driver_layout, :require_login, :is_logged_in?, :current_user

    def driver_layout
      @driver = Driver.find_by(id: session[:driver_id])
    end
  
    def require_login
      redirect_to '/' unless session.include? :driver_id
    end

    def is_logged_in?
      if session[:driver_id]
        redirect_to '/'
      end
    end

    def current_user
      if @driver = Driver.find_by(id: params[:id])
        @driver = Driver.find_by(id: params[:id])
      else
        @driver = Driver.find_by(id: session[:driver_id])
      end
      if session[:driver_id] != @driver.id
        redirect_to driver_path(session[:driver_id])
      end
    end
end
