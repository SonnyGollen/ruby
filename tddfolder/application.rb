require 'date'
<<<<<<< HEAD
require 'pry'
require 'yaml'

class Person
    attr_accessor :dob, :first_name, :surname, :emails, :phone_numbers
    
    
    #Creates the person object
=======

class Person
    attr_accessor :dob, :first_name, :surname, :email, :phone_numbers
    
>>>>>>> a531cb927a82e2f1098d6f7cc15f6c5efd3fdbc2
    def initialize(first_name, surname, dob)
        @dob = Date.parse(dob)
        @first_name = first_name.capitalize
        @surname = surname.capitalize
<<<<<<< HEAD
        @fullname = @first_name + ' '  + @surname
        @emails = []
        @phone_numbers = []
    end
    
    
    #Makes the full name from the variables in the initialize method.
=======
        @email = []
        @phone_numbers = []
    end
    
>>>>>>> a531cb927a82e2f1098d6f7cc15f6c5efd3fdbc2
    def fullname
        "#{@first_name} #{@surname}"
    end
    
<<<<<<< HEAD
    
    #Lets the user enter an email address and pushes it to the email array in the initialize method.
    def add_email(em)
        @emails.push(em)
    end
    

    
    #Lets the user enter a phone number and pushes it to the phone_numbers array.
=======
    def add_email(em)
        @email.push(em)
    end
        
>>>>>>> a531cb927a82e2f1098d6f7cc15f6c5efd3fdbc2
    def add_phone(num)
        @phone_numbers.push(num)
    end
    
<<<<<<< HEAD
    
    #Lets the user delete an email from the email array
    def remove_email(demails)
        @emails.delete_at(demails)
    end
    
    #Lets the user delete a number from the phone_numbers array
    def remove_number(dnumber)
        @phone_numbers.delete_at(dnumber)
    end
    
    #Prints the details of the person
    def to_s
        "#{@fullname} was born on #{@dob}. \n Their email addresses are: #{@emails}. \n Their phone numbers are: #{@phone_numbers}"
    end
   
    def print_details
       puts "\n#{@fullname}\n--------\nDate of Birth: #{@dob} \n \nEmail Address: \n"
        
        @emails.each do |e|
            puts "- " + e.to_s
        end
        
      puts  "\nPhone Numbers: \n"
        
        @phone_numbers.each do |f|
            puts "- " + f.to_s    
        end
        
        
    end
    
##############    
#file = File.open 'people_data.yml'
#people_data = YAML::load(File.open(filename))
##############^^^^^^^^^^^^^^^^
    #Dannys code below
#    data['people'].each do |yam1_person|
        
#        person = #Person.new(yam1_person["fname"],...
    
    
end #End of Person class


#Creates the FamiltyMember class, inheriting from the Person class.
class FamilyMember < Person
    attr_accessor :relationship
    
    #Creates the FamilyMember object
    def initialize(first_name, surname, dob, relation)
        @relationship = relation
        
        #super takes the arguments and sends them up to use the Person class
        super(first_name, surname, dob)
    end
    
end #End of FamilyMember class

    #Credit to Romeo for the code, copied to learn from and due to time.
class AddressBook
    
    attr_accessor :people
    
    #Creates the people array.
    def initialize
        @people = []
    end
    
    def people
        @people.to_s
    end
    

    def add(person)  
    # raise an error if object is not or does not inherit from class Person
        unless person.is_a? Person
            raise "Sorry. Only objects of class Person and FamilyMember are allowed to be added into the address book."
        else
            @people.push(person)  
        end
    end
    
    
    def list
        puts "Address Book \n----------\n"

        @people.each_with_index do |p, i|
            # +1 is added to i because indexing starts at 0 and the first
            # object should be presented as Entry 1, not Entry 0
            puts "Entry #{i+1}: #{p.first_name} #{p.surname}"
        end
    end
    
end #End of AddressBook class

#binding.pry
=======
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
>>>>>>> a531cb927a82e2f1098d6f7cc15f6c5efd3fdbc2
