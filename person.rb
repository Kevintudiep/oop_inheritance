class Person

  def initialize(name)
    @name = name
  end

#Reader
  def name
    return @name
  end

  #Writer
  def name=(name)
    @name = name
  end

  def greeting
    return "Hi my name is #{self.name}"
  end

end


class Student < Person

  def learn
    return "I get it!"
  end

end



class Instructor < Person

  def teach
    return "Everything in Ruby is an Object"
  end

end






person1 = Instructor.new('Nadia')

puts person1.greeting
#Question 6
puts '-----'

person2 = Student.new('Chris')

puts person2.greeting
#Question 7
puts '-----'

puts person2.learn
puts person1.teach
puts person2.teach
puts person1.learn
#It doesnt work because the instance methods that we are trying to call belong to there specific class where they are located. In order to use these medthods i would have to put these instance methods inside the parent class
