object @venue
attributes :id, :name, :description, :img_url
child(:rooms){ attributes :id, :name}

