collection @teachers, :root => "teachers"

attributes :id, :name, :img_url
node(:first_letter){|teacher| "A"}