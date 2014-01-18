module Api
  class SeatsController < Api::BaseController
    def index
      if params[:lesson_id].blank?
        @seats = Seat.all
      else
        @seats = Room.find(params[:room_id]).seats
      end
      return @seats
    end
    
    def show
      @seat = Seat.find(params[:id])
    end
  end
end