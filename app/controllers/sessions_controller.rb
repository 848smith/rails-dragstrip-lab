class SessionsController < ApplicationController
    layout "application"
    before_action :driver_layout
    skip_before_action :driver_layout, only: [:auth]

    def new
    end

    def create
        @driver = Driver.find_by(username: params[:username])
        if @driver.authenticate(params[:password])
            session[:driver_id] = @driver.id
            redirect_to driver_path(@driver)
        else
            render 'new', notice: "Password is incorrect"
        end
    end

    def auth
        pp request.env['omniauth.auth']
        @driver = Driver.find_by(username: request.env['omniauth.auth']['info']['nickname'])
        #session[:username] = request.env['omniauth.auth']['info']['nickname']
        session[:driver_id] = @driver.id
        session[:omniauth_data] = request.env['omniauth.auth']
        redirect_to root_path
    end

    def destroy
       session.delete :driver_id
       redirect_to "/" 
    end
end