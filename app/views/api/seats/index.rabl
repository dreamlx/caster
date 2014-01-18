
collection @seats, :root => "seats"
attributes :name
child(:room) { attributes :seatcount, :number_of_line }
