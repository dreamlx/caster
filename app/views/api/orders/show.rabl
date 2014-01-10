object @order
attributes :id, :number
child(:seat) { |seat| :id, :name, :state }
child(:user) { |user| :id, :name }
