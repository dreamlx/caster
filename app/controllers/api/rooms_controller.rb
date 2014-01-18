module Api
  class RoomsController < Api::BaseController
    def index
      if params[:venue_id].blank?
        @rooms = Room.all
      else
        @rooms = Venue.find(params[:venue_id]).rooms
      end
    end
    def show
      @room = Room.find(params[:id])
    end
  end
end