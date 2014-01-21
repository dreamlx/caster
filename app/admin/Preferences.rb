# coding: utf-8
ActiveAdmin.register_page "Preferences" do
  menu label: '基础设置', :priority => 100
  content do
    ul do
      li link_to t(:room, scope: [:activerecord, :models]), admin_rooms_path
      li  link_to t(:seat, scope: [:activerecord, :models]), admin_seats_path
      li  link_to t(:lesson, scope: [:activerecord, :models]), admin_lessons_path
      li  link_to t(:lesson_seat, scope: [:activerecord, :models]), admin_lesson_seats_path
      li  link_to t(:admin_user, scope: [:activerecord, :models]), admin_admin_users_path
    end
  end
end