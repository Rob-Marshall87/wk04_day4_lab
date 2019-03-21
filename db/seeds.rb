require_relative('../models/student.rb')
require_relative('../models/house.rb')



house1 = House.new({'name' => 'Gryffindor', 'logo' => 'https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjInfq0u5PhAhVu2OAKHTTKCyUQjRx6BAgBEAU&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F147141112798505024%2F&psig=AOvVaw3UtGYCJsa7qbaPicXqYGV-&ust=1553265557492991'})
house1.save
house2 = House.new({'name' => 'Ravenclaw', 'logo' => 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwir1PbUvJPhAhVMPBoKHU7wC8gQjRx6BAgBEAU&url=https%3A%2F%2Fwww.pngkey.com%2Fdetail%2Fu2q8i1y3o0e6w7y3_harry-potter-ravenclaw-crest-ravenclaw-logo%2F&psig=AOvVaw1df7ScAFWevm56OBtwGgGQ&ust=1553265916070297'})
house2.save
house3 = House.new({'name' => 'Hufflepuff', 'logo' => 'https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiznr7gvJPhAhUMqxoKHXduBy8QjRx6BAgBEAU&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F565342559455973395%2F&psig=AOvVaw1TaSMxSpDA40NeDqBr59Jk&ust=1553265959056916'})
house3.save
house4 = House.new({'name' => 'Slytherin', 'logo' => 'https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiimKbyvJPhAhVRrxoKHRz7D9QQjRx6BAgBEAU&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F298433912792698701%2F&psig=AOvVaw0D2JUVX25-pkOYPdJteoil&ust=1553265990374581'})
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
