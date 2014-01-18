#coding: utf-8
module Api
  class LessonSeatsController < Api::BaseController
    def index
      if params[:lesson_id].blank?
        @lesson_seats = LessonSeat.all
      else
        lesson = Lesson.find(params[:lesson_id])
        @lesson_seats = lesson.lesson_seats
        @seatcount = lesson.room.seatcount
        @number_of_line = lesson.room.number_of_line
      end
    end

    def show
      @lesson_seat = LessonSeat.find(params[:id])
    end
  end
end