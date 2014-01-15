module Api
  class SeatsController < Api::BaseController
    def index
      if params[:lesson_id].blank?
        @seats = Seat.all
      else
        @seats = Lesson.find(params[:lesson_id]).seats
      end
    end
    
    def show
      @seat = Seat.find(params[:id])
    end
  end
end