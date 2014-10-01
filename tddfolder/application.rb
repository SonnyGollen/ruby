require 'date'

class Person
    attr_accessor :dob, :first_name, :surname, :email, :phone_numbers
    
    def initialize(first_name, surname, dob)
        @dob = Date.parse(dob)
        @first_name = first_name.capitalize
        @surname = surname.capitalize
        @email = []
        @phone_numbers = []
    end
    
    def fullname
        "#{@first_name} #{@surname}"
    end
    
    def add_email(em)
        @email.push(em)
    end
        
    def add_phone(num)
        @phone_numbers.push(num)
    end
    
    def remove_email(demail)
        @email.delete_at(demail)
    end
    
    
end

class FamilyMember < Person
    attr_accessor :relationship
    
    def initialize(first_name, surname, dob, relation)
        @relationship = relation
        super(first_name, surname, dob)
    end
    
end