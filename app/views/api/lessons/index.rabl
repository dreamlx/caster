#index.rabl
#课程id、课程时间、老师id、老师照片、老师姓名、课程名称、教室名称、预订状态

collection @lessons

attributes :id, :lessontime

child(:teacher) { attributes :id, :name, :img }
child(:room) { attributes :id, :name }
child(:course) { attributes :name }

node(:status) { |lesson| "预定" }
