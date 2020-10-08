require 'pry'

class School
    
    attr_accessor :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
       if @roster.key?(grade)
            @roster[grade] << student_name
       else
        @roster[grade] = [student_name]
        end

    end
    
    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.each_value  { |v| v.sort! }
        binding.pry
    end
   
    
end




 #binding.pry