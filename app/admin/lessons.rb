ActiveAdmin.register Lesson do
  menu false

  #state：订满|预订
  belongs_to :course, :optional => true
  
  index do
    column :course
    column :name
    column :teacher
    column :supply
    column :starting_time
    column :ending_time
    column :description

    default_actions
  end
  
  controller do 
    layout 'active_admin', only: [:edit]

    def edit
      @lesson = Lesson.find(params[:id])
      @venues = Venue.all
      @rooms = Array.new
      @teachers = Teacher.all
      @courses = Course.all
      
      respond_to do |format|
        format.html { render 'edit' }
      end
    end
  
  end
end
