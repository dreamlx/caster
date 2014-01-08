module Api
  class SeatsController < Api::BaseController
    def index
      @lesson = Lesson.find(params[:lesson_id])

    end
    
    def show
      @seat = Seat.find(params[:id])
    end
  end
end