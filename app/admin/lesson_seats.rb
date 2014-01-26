ActiveAdmin.register LessonSeat do
  actions :index, :show
  belongs_to :lesson, :optional => true
  menu false

  index do
    column :id 
    column :lesson do |l|
      l.lesson.name
    end
    column :seat do |s|
      s.seat.name
    end
    column :created_at
  end
end