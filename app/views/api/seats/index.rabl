#座位列表、每个座位的状态、总共座位数、每一排的座位数
object @lesson => :seats_info
child(:room)      { |lesson| :seatcount, :number_of_line }
node(:lesson_id)  { |lesson| @lesson.id }
child(:seats)     { attributes :name, :state }