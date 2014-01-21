#coding: utf-8
ActiveAdmin.register Venue do
  menu label: '场馆', priority: 10
  sidebar "Details", only: [:show, :edit] do
    ul do
      li link_to("Rooms", admin_venue_rooms_path(venue))
      #li link_to("Milestones", admin_project_milestones_path(project))
    end
  end
  
  index do
    column :img do |venue|
      image_tag("#{venue.img.url}?imageView/2/w/128") unless venue.img.url.blank?
    end
    column :id
    column :name
    column :description

    default_actions
  end

  show do |venue|
    attributes_table do
      row :id
      row :name
      row :description
      row :img do
        image_tag(venue.img.url)
      end
    end
    active_admin_comments
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
    end
    f.inputs "Image", :multipart => true do 
      f.input :img, :as => :file, :hint => f.template.image_tag(f.object.img.url) 
      f.input :img_cache, :as => :hidden 
    end
    f.actions
  end
end
