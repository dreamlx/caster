ActiveAdmin.register Lesson do
  #state：订满|预订
  belongs_to :course
  navigation_menu :course  

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
end
