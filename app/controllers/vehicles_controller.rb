class VehiclesController < ApplicationController
    layout "application"
    before_action :driver_layout

    def index
        
    end

    def new
        @vehicle = Vehicle.new
    end

    def create
        @vehicle = Vehicle.new(vehicle_params)
        @driver.vehicles << @vehicle
        if @vehicle.save 
            redirect_to driver_vehicles_path(@driver)
        else
            render 'new'
        end
    end

    def show
        @vehicle = Vehicle.find_by(id: params[:id])
    end

    def destroy
        @vehicle = Vehicle.find_by(id: params[:id])
        @vehicle.delete
        redirect_to driver_vehicles_path(@driver)
    end

    private

    def vehicle_params
        params.require(:vehicle).permit(:year, :make, :model, :horsepower, :trim)
    end
end
