# coding: utf-8
ActiveAdmin.register Course do
  menu label: '课程', :priority => 20
    sidebar "Details", only: [:show, :edit] do
      ul do
        li link_to("Lessons", admin_course_lessons_path(course))
      end
    end  
end
