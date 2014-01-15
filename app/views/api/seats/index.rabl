#座位列表、每个座位的状态、总共座位数、每一排的座位数
collection @seats, :root => "seats"
attributes :name, :state
child(:room) { attributes :seatcount, :number_of_line }
