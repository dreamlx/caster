ActiveAdmin.register Course do
    sidebar "Details", only: [:show, :edit] do
      ul do
        li link_to("Lessons", admin_course_lessons_path(course))
      end
    end  
end
