#index.rabl
#课程id、课程时间、老师id、老师照片、老师姓名、课程名称、教室名称、预订状态

collection @lessons

attributes :id, :starting_time, :ending_time

child(:teacher => :teacher) { attributes :id, :name, :img_url }
child(:room => :room) { attributes :id, :name }
child(:course => :course) { attributes :name }

node(:status) do |lesson| 
  lesson_state = '订满'
  lesson.seats.each { |seat| lesson_state = '未满' if seat.state == '可选' } 
end
