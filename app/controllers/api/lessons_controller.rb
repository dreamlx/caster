module Api
  class LessonsController < Api::BaseController
    def index
      #TODO : 查询对应日期课程和可用状态
      current_date = params[:lessondate].to_date.beginning_of_week
        
      @lesson_groupby_dates = []

      # 获取2周
      (0..13).each do |i|
        item = {lesson_date: current_date}
        current_date = current_date.next_day
        tmp_lessons = Venue.find(params[:venue_id]).lessons
        lessons = []
        tmp_lessons.each do |lesson|
          #课程id、课程时间、老师id、老师照片、老师姓名、课程名称、教室名称、预订状态
          new_lesson = { id: lesson.id, 
                         starting_time: lesson.starting_time, 
                         ending_time: lesson.ending_time,
                         course: { id: lesson.course_id, name: lesson.course.name},
                         room: { id: lesson.room_id, name: lesson.room.name},
                         state: "预订"
                       }
          
          if lesson.teacher.nil?
            teacher = {}
          else
            teacher =  { id: lesson.teacher_id, name: lesson.teacher.name, img_url: lesson.teacher.img_url}
          end
          new_lesson[:teacher] = teacher

          lessons << new_lesson
        end
        
        item[:lessons] = lessons
        @lesson_groupby_dates << item
        
      end
       render json: {lessons: @lesson_groupby_dates}
    end

    def show
      @lesson = Lesson.find(params[:id])
    end
  end
end