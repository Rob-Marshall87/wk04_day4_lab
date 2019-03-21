require_relative('../models/student.rb')
require_relative('../models/house.rb')



house1 = House.new({'name' => 'Gryffindor', 'logo' => 'Gryffindor_logo'})
house1.save
house2 = House.new({'name' => 'Ravenclaw', 'logo' => 'Ravenclaw_logo'})
house2.save
house3 = House.new({'name' => 'Hufflepuff', 'logo' => 'Hufflepuff_logo'})
house3.save
house4 = House.new({'name' => 'Slytherin', 'logo' => 'Slytherin_logo'})
house4.save


student1 = Student.new({'first_name' => 'Harry',
            'last_name' => 'Potter',
            'house' => house1.id,
            'age' => 10})
student1.save

student2 = Student.new({'first_name' => 'Hermione',
            'last_name' => 'Granger',
            'house' => house1.id,
            'age' => 10})
student2.save
