#api
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
    =>
    [{"lesson":{"id":1,"lessontime":null,"status":"预定","teacher":{"id":1,"name":"jack","img":null},"room":{"id":1,"name":"1123"},"":null}}]

### show
课程id、课程名称、课程时间、教室名称、老师照片、老师id、老师姓名、老师简介、是否为代课老师(supply)、课程介绍

    curl http://127.0.0.1:3000/api/lessons/1
    =>
    {"lesson":{"id":1,"lessontime":null,"status":"订满","teacher":{"id":1,"name":"jack","img":null,"description":null,"supply":null},"room":{"name":"1123"},"":null}}