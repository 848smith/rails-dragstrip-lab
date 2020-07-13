class VehiclesController < ApplicationController
    layout "application"
    before_action :driver_layout

    def index
        @driver.vehicles = Vehicle.all
    end

    def new
        @vehicle = Vehicle.new
    end

    def create
        @vehicle = Vehicle.create(vehicle_params)
        redirect_to vehicles_path
    end

    private

    def vehicle_params
        params.require(:vehicle).permit(:year, :make, :model, :horsepower, :trim)
    end
end
