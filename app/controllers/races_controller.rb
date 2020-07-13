class RacesController < ApplicationController
    layout "application"
    before_action :driver_layout

    def new
        @race = Race.new
        @track = Track.find_by(id: params[:track_id])
    end

    def create
        race = Race.create(race_params)
        @track = Track.find_by(name: params[:race][:track])
        @track.races << race
        @driver.races << race
        redirect_to driver_races_path(@driver)
    end

    def index
        @races = @driver.races
    end

    private

    def race_params
        params.require(:race).permit(:track_time)
    end
end
