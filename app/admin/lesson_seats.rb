ActiveAdmin.register LessonSeat do
  actions :index, :show
  belongs_to :lesson, :optional => true
  menu false
end