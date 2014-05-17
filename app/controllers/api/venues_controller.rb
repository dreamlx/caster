module Api
  class VenuesController < Api::BaseController
    def index
      @venues = Venue.all
    end

    def show
      @venue = Venue.find(params[:id])
    end
    def get_rooms  
      @rooms = Venue.find(params[:venue_id]).rooms
      render :partial => "/admin/lessons/venue_rooms", :rooms => @rooms
    end
  end
end