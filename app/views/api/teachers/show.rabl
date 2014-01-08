#老师id、老师名字、老师照片、老师介绍、老师名字首字母

object @teacher

attributes :id, :name, :img, :description
node(:first_letter){|teacher| "A"}