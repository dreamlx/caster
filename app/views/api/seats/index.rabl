
collection @seats, :root => "seats"
attributes :id, :name
child(:room) { attributes :seatcount, :number_of_line }
