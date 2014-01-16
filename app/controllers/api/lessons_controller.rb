#coding: utf-8
module Api
  class LessonsController < Api::BaseController
    def index
      current_date = params[:lessondate].to_date.beginning_of_week
        
      @lesson_groupby_dates = []

      # 获取2周
      (0..13).each do |i|
        item = {lesson_date: current_date}
        tmp_lessons = Venue.find(params[:venue_id]).lessons.where("date(starting_time) = #{current_date}")
        current_date = current_date.next_day
        
        lessons = []
        tmp_lessons.each do |lesson|
          #课程id、课程时间、老师id、老师照片、老师姓名、课程名称、教室名称、预订状态
          new_lesson = { id: lesson.id, 
                         name: lesson.name,
                         starting_time: lesson.starting_time, 
                         ending_time: lesson.ending_time,
                         course: { id: lesson.course_id, name: lesson.course.name},
                         room: { id: lesson.room_id, name: lesson.room.name},
                         state: lesson.state
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