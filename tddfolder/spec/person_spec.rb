require 'spec_helper'
require 'date'


    ################################

describe "The person class" do
    it "should store basic details" do
        person = Person.new("Joe", "Bloggs", "1 Jan 1990")
        expected_date = Date.parse("1 Jan 1990")
        expect(person.dob).to eq(expected_date)
        expect(person.first_name).to eq("Joe")
        expect(person.surname).to eq("Bloggs")
        expect(person.fullname).to eq("Joe Bloggs")
    end
    
    

    ################################
    
    it "should store emails" do
        person = Person.new("Joe", "Bloggs", "1 Jan 1990")
        expect(person.email).to eq ([])
        
        person.add_email "joe@foo.com"
        person.add_email "joebloggs@foo.com"

        expect(person.email).to eq(["joe@foo.com", "joebloggs@foo.com"])
    end
    
    #################################
    
    it "should store numbers" do
        person = Person.new("Joe", "Bloggs", "1 Jan 1990")
        expect(person.phone_numbers).to eq ([])
        
        person.add_phone "077123456789"
        person.add_phone "077987654321"
        
        expect(person.phone_numbers).to eq (["077123456789", "077987654321"])
    end
    
    ###################################
    
    it "should delete email from array" do
        person =  Person.new("Joe", "Bloggs", "1 Jan 1990")
        expect(person.emails).to eq ([])
        
        person.add_email "joe@foo.com"
        person.add_email "bloggs@foo.com"
        
        person.remove_email 0
        
        expect(person.emails).to eq (["bloggs@foo.com"])
    end
    
end

describe "The relationship class" do
    it "should add a relationship" do
        @relation = FamilyMember.new("Bob", "Ross", "25 May 2000", "bro")
        
        expected_date = Date.parse("25 May 2000")
        
        expect(@relation.dob).to eq(expected_date)
        
        expect(@relation.first_name).to eq("Bob")
        expect(@relation.surname).to eq("Ross")
        expect(@relation.email).to eq([])
        expect(@relation.phone_numbers).to eq([])
    end
end

    ##################################



#describe "The AddressBook class" do
#    it "should create an address book list #and add people to it." do
        
#        person1 = Person.new("joe", #"bloggs", "1 Jan 1990")
#        #person2 = Person.new("andy", #"nother", "2 Jan 1995")
        
#        book = AddressBook.new
#        book.add person1
#         book.add person2
        
#        expect(book.people).to eq([@first_name = "Joe", @surname = "Bloggs", @dob = "1990-01-01", @emails = "[]", @phone_numbers = "[]"])
#    end
#end