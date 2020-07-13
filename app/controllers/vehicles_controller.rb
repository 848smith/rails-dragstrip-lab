class VehiclesController < ApplicationController
    layout "application"
    before_action :driver_layout

    def index
        
    end

    def new
        @vehicle = Vehicle.new
    end

    def create
        vehicle = Vehicle.create(vehicle_params)
        @driver.vehicles << vehicle
        redirect_to driver_vehicles_path(@driver)
    end

    def show
        @vehicle = Vehicle.find_by(id: params[:id])
    end

    private

    def vehicle_params
        params.require(:vehicle).permit(:year, :make, :model, :horsepower, :trim)
    end
end
