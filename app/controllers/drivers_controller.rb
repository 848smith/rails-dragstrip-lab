class DriversController < ApplicationController
    layout 'application'
    before_action :driver_layout, only: [:home]
    before_action :require_login, only: [:show]

    def home
    end

    def new
        @driver = Driver.new
    end

    def create
        @driver = Driver.create(driver_params)
        session[:driver_id] = @driver.id
        redirect_to driver_path(@driver)
    end
    
    def show
        @driver = Driver.find_by(id: params[:id])
    end

    private

    def driver_params
        params.require(:driver).permit(:name, :password, :age, :experience, :country)
    end
end
