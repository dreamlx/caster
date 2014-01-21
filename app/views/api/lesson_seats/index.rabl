#座位列表、每个座位的状态、总共座位数、每一排的座位数
collection @lesson_seats
attributes :id, :state
node(:seatcount){ @seatcount }
node(:number_of_line){ @number_of_line }
child(:seat){ attributes :id, :name}
child(:lesson){ attributes :id, :name}

