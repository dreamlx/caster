ActiveAdmin.register Teacher do
  index do
    column :img do |teacher|
      image_tag("#{teacher.img.url}?imageView/2/w/128") unless teacher.img.url.blank?
    end
    column :id
    column :name
    column :description

    default_actions
  end

  show do |teacher|
    attributes_table do
      row :id
      row :name
      row :description
      row :img do
        image_tag(teacher.img.url)
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
