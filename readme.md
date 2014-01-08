# 后台管理
    http://caster2014.herokuapp.com
    username: admin@caster.com
    passwd:12345678

#api
全局说明：凡是'/1'这样形式出现的，这里的数字1就是对应资源id号，类型integer

## venue 场馆
###index
首页，查询场馆list

    curl http://127.0.0.1:3000/api/venues                            
    =>
    [{"venue":{"id":1,"name":"test","img":null}}]

### show
查询id=1 的场馆

    curl http://127.0.0.1:3000/api/venues/1                   
    =>
    {"venue":{"id":1,"name":"test","description":null,"img":null}}

## lesson 课程
### index
课程id、课程时间、老师id、老师照片、老师姓名、课程名称、教室名称、预订状态

    curl http://127.0.0.1:3000/api/lessons?venue_id=1&lessondate=2014-01-01 
    参数：
        venue_id 场馆id
        lessondate 课程日期
    =>
    [{"lesson":{"id":1,"lessontime":null,"status":"预定","teacher":{"id":1,"name":"jack","img":null},"room":{"id":1,"name":"1123"},"":null}}]

### show
课程id、课程名称、课程时间、教室名称、老师照片、老师id、老师姓名、老师简介、是否为代课老师(supply)、课程介绍

    curl http://127.0.0.1:3000/api/lessons/1
    =>
    {"lesson":{"id":1,"lessontime":null,"status":"订满","teacher":{"id":1,"name":"jack","img":null,"description":null,"supply":null},"room":{"name":"1123"},"":null}}

## Seats 座位
### index
    curl http://127.0.0.1:3000/api/seats?lesson_id=1
    参数： lesson_id
    =>
    {"seats_info":{"seatcount":null,"number_of_line":null,"lesson_id":1,"seats":[]}}

###show
    curl http://127.0.0.1:3000/api/seats/1
    =>

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

##Teacher 老师
### index 看全部老师
    curl http://127.0.0.1:3000/api/teachers

###show 单个老师
    curl http://127.0.0.1:3000/api/teachers/1    