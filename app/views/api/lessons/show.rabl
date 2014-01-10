#课程id、课程名称、课程时间、教室名称、老师照片、老师id、老师姓名、老师简介、是否为代课老师、课程介绍

object @lesson

attributes :id, :starting_time, :ending_time, :supply

child(:teacher) { attributes :id, :name, :img, :description }
child(:room) { attributes :name }
child(:course) { attributes :name, :description }
node(:status) { |lesson| "订满" }