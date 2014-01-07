module Api
  class CoursesController < Api::BaseController
    def index
      @courses = Course.all
    end
    def show
      @course = Course.find(params[:id])
    end
  end
end