# 后台管理
    http://caster2014.herokuapp.com
    username: admin@caster.com
    passwd:12345678

#api
全局说明：凡是'/1'这样形式出现的，这里的数字1就是对应资源id号，类型integer

图片用了qiniu云，img_url 可以跟参数，?imageView/2
    
    http://docs.qiniu.com/api/v6/image-process.html

## Venue 场馆
###index
首页，查询场馆list

    curl http://127.0.0.1:3000/api/venues                            
    =>
    [{"venue":{"id":1,"name":"test","img":null}}]

### show
查询id=1 的场馆,包括场馆下rooms

    curl http://127.0.0.1:3000/api/venues/1                   
    =>
    {"venue":{"id":1,"name":"test","description":"","img_url":"http://caster.qiniudn.com/uploads/venue/img/1/bg.jpg","rooms":[{"room":{"id":3,"name":"sdfs"}}]}}

##Room 房间情况
### index 房间列表
参数：venue_id

    curl http://caster2014.herokuapp.com/api/rooms?venue_id=2
    =>
    {"rooms":[{"room":{"id":3,"name":"HK Room A"}},{"room":{"id":2,"name":"PT Room B"}},{"room":{"id":1,"name":"PT Room A"}},{"room":{"id":4,"name":"HK Room B"}},{"room":{"id":5,"name":"HP Room A"}},{"room":{"id":6,"name":"HP Room B"}},{"room":{"id":7,"name":"BL Room A"}},{"room":{"id":8,"name":"BL Room B"}}]}

### show 房间信息
包括房间座位信息

    curl http://caster2014.herokuapp.com/api/rooms/1
    =>
    {"room":{"id":1,"name":"1123","description":null,"seatcount":null,"number_of_line":null,"seats":[]}}

## Seat 座位
对应room，查看该room内的座位情况
### index
    curl http://caster2014.herokuapp.com/api/seats?room_id=8 
    参数： room_id
    =>
    {"seats":[{"seat":{"name":"seat 1","room":{"seatcount":20,"number_of_line":5}}},{"seat":{"name":"seat 1","room":{"seatcount":20,"number_of_line":4}}}]}

###show
    curl http://caster2014.herokuapp.com/api/seats/1
    =>
    {"seat":{"id":1,"name":"seat 1"}

## lesson 课程
### index
课程id、课程时间、老师id、老师照片、老师姓名、课程名称、教室名称、预订状态

    curl http://127.0.0.1:3000/api/lessons?lessondate=2014-1-1&venue_id=1
    参数：
        venue_id 场馆id
        lessondate 课程日期
    =>
    {"lessons":[{"lesson_date":"2013-12-30","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2013-12-31","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-01","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-02","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-03","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-04","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-05","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-06","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-07","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-08","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-09","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-10","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-11","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]},{"lesson_date":"2014-01-12","lessons":[{"id":2,"starting_time":null,"ending_time":null,"course":{"id":1,"name":"sdfad"},"room":{"id":3,"name":"sdfs"},"state":"TODO","teacher":{}}]}]}

### show
课程id、课程名称、课程时间、教室名称、老师照片、老师id、老师姓名、老师简介、是否为代课老师(supply)、课程介绍

    curl http://127.0.0.1:3000/api/lessons/1
    =>
    {"lesson":{"id":1,"lessontime":null,"status":"订满","teacher":{"id":1,"name":"jack","img":null,"description":null,"supply":null},"room":{"name":"1123"},"":null}}

##LessonSeats 课程座位情况
### index 
参数：lesson_id

    curl http://127.0.0.1:3000/api/lesson_seats?lesson_id=1
    =>
    [{"lesson_seat":{"id":1,"state":"可选","seatcount":null,"number_of_line":null,"seat":{"id":1,"name":"121"},"lesson":{"id":6,"name":""}}}]

## Order 订单
### Create 下订单
    curl -D "user_id=1&seat_id=2" http://127.0.0.1:3000/api/orders
    参数：
        user_id
        seat_id
    action: POST
    =>
###index 查看自己所有订单
    curl http://127.0.0.1:3000/api/orders?user_id=1
    参数:
        user_id
    =>
### show 查看单个订单（创建订单后会直接返回json）
    curl http://127.0.0.1:3000/api/orders/1
    =>
### destroy 取消订单
    curl -x DELETE http://127.0.0.1:3000/api/order/1
    =>
##Teacher 老师
### index 看全部老师
    curl http://127.0.0.1:3000/api/teachers

###show 单个老师
    curl http://127.0.0.1:3000/api/teachers/1    

## User 用户
### create 创建用户
    curl -d "user[email]=test2@gmail.com&user[password]=11111111" http://127.0.0.1:3000/api/users
    参数：
        user[email]
        user[password]
    action： POST
    
    => 
    {"user":{"created_at":"2014-01-15T07:54:12Z","email":"test8@gmail.com","id":8,"updated_at":"2014-01-15T07:54:12Z","username":null},"token":"C3tXVd8uMyiUmJSr61mU","state":"ok"}%


### 获取token
获取到token后，使用方法： http://xx.xxx.xx/resources?auth_token=ramECuxkizHhT2GoHuLv

    curl -d "email=test@gmail.com&password=11111111" http://127.0.0.1:3000/api/tokens            
    参数：
        user[email]
        user[password]
    action： POST
    =>
    {"state":"ok","token":"ramECuxkizHhT2GoHuLv","user":{"created_at":"2014-01-09T12:01:16Z","email":"test@gmail.com","id":1,"updated_at":"2014-01-09T12:01:16Z","username":null}}

### show user
    curl http://127.0.0.1:3000/api/tokens/ramECuxkizHhT2GoHuLv
    =>
    {"state":"ok","token":"ramECuxkizHhT2GoHuLv","user":{"created_at":"2014-01-09T12:01:16Z","email":"test@gmail.com","id":1,"updated_at":"2014-01-09T12:01:16Z","username":null}}
### 注销token
    curl -X DELETE http://127.0.0.1:3000/api/tokens/ramECuxkizHhT2GoHuLv
    action: DELETE
    =>
    {"state":"ok","token":"ramECuxkizHhT2GoHuLv", "message":"token was deleted"}

