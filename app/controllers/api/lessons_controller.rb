module Api
  class LessonsController < Api::BaseController
    def index
      #TODO : 查询对应日期课程和可用状态
      #@lessondate = params[:lessondate]
      #@venue = Venue.find(params[:venue_id])
      if params[:venue_id].blank?
        lessons = Lesson.all
      else
        lessons = Venue.find(params[:venue_id]).lessons
      end
      @lessons = []

      (0..13).each do |i|
        if lessons[i].nil? 
          @lessons << Lesson.new 
        else
          @lessons << lessons[i]
        end
      end
    end

    def show
      @lesson = Lesson.find(params[:id])
    end
  end
end