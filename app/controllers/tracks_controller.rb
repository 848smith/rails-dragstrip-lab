class TracksController < ApplicationController
    layout "application"
    before_action :driver_layout

    def new
        @track = Track.new
    end

    def create
        @track = Track.new(track_params)
        if @track.save
            redirect_to tracks_path
        else
            render 'new'
        end
    end

    def index
        @tracks = Track.all
    end

    def show
        @track = Track.find_by(id: params[:id])
    end

    private

    def track_params
        params.require(:track).permit(:name, :location, :weather, :distance)
    end
end
