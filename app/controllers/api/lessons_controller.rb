module Api
  class LessonsController < Api::BaseController
    def index
      #TODO : 查询对应日期课程和可用状态
      #@lessondate = params[:lessondate]
      #@venue = Venue.find(params[:venue_id])
      @lessons = Lesson.all
    end
    def show
      @lesson = Lesson.find(params[:id])
    end
  end
end