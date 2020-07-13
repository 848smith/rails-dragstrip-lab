class RacesController < ApplicationController
    layout "application"
    before_action :driver_layout

    def new
        @race = Race.new
    end

    def create

    end

    private

    def race_params
        params.require(:race).permit(:track_time)
    end
end
