module Api
  class VenuesController < Api::BaseController
    def index
      @venues = Venue.all
    end

    def show
      @venue = Venue.find(params[:id])
    end
  end
end