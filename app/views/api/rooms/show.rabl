object @room

attributes :id, :name, :description, :seatcount, :number_of_line
child(:seats){ attributes :id, :name }