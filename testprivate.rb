class Person

    def self.get_name
        persons_name
    end
  
    def self.get_PN
        persons_PN
    end
    
    private_class_method def self.persons_name
        "Sam"
    end
    
    private_class_method def self.persons_PN
        "971103"
    end

end

puts "Hey, " + Person.get_name
#puts "Hey, " + Person.persons_name
puts Person.get_PN
