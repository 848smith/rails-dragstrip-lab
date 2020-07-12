class SessionsController < ApplicationController
    layout "application"
    before_action :driver_layout

    def new
    end

    def create
        @driver = Driver.find_by(name: params[:driver])
        if @driver.authenticate(params[:password])
            session[:driver_id] = @driver.id
            redirect_to driver_path(@driver)
        else
            render 'new', notice: "Password is incorrect"
        end
    end

    def destroy
       session.delete :driver_id
       redirect_to "/" 
    end
end