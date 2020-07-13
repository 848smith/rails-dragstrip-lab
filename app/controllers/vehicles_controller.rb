class VehiclesController < ApplicationController
    layout "application"
    before_action :driver_layout

    def index
        @driver.vehicles = Vehicle.all
    end
end
