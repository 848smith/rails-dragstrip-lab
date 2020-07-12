class ApplicationController < ActionController::Base
    helper_method :driver_layout, :require_login

    def driver_layout
      @driver = Driver.find_by(id: session[:driver_id])
    end
  
    def require_login
      redirect_to '/' unless session.include? :driver_id
    end
end
