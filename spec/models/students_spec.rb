require 'rails_helper'

describe Student do
	describe "#full_name" do
		it "returns complete name" do
			student=Student.create!( 
				first_name: "Marco",
				last_name: "Ochoa",
				birthdate: "28/01/1992",
		    	control_number:"10460302",
		    	semester: "11" )

		    expect(student.name).to eq "Marco Ochoa"
		end
	end

	describe "validations" do
	    it "fails to save" do
	    	post = Student.new
	      	post.save
	      	expect(post).to_not be_persisted
	    end

	    it "validates presence of first_name" do
	      	post = Student.new(last_name: "Ochoa", birthdate: "28/01/1992", control_number:"10460302", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["First name can't be blank"])
	    end

	    it "validates presence of last_name" do
	      	post = Student.new(first_name: "Marco", birthdate: "28/01/1992", control_number:"10460302", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Last name can't be blank"])
	    end

	    it "validates presence of birthdate" do
	      	post = Student.new(first_name: "Marco", last_name: "Ochoa", control_number:"10460302", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Birthdate can't be blank"])
	    end
	   
	    it "validates presence of control_number" do
	      	post = Student.new(first_name: "Marco", last_name: "Ochoa", birthdate: "28/01/1992", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Control number can't be blank"])
	    end

	    it "validates presence of semester" do
	      	post = Student.new(first_name: "Marco", last_name: "Ochoa", birthdate: "28/01/1992", control_number:"10460302")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Semester can't be blank"])
	    end
	   
  	end




  		it "returns complete name" do
			student=Student.create!( 
				first_name: "Ricardo",
				last_name: "Oliva",
				birthdate: "12/04/1992",
		    	control_number:"10460303",
		    	semester: "11" )

		    expect(student.name).to eq "Ricardo Oliva"
		end

			describe "validations" do
	    it "fails to save" do
	    	post = Student.new
	      	post.save
	      	expect(post).to_not be_persisted
	    end

	    it "validates presence of first_name" do
	      	post = Student.new(last_name: "Oliva", birthdate: "12/04/1992", control_number:"10460303", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["First name can't be blank"])
	    end

	    it "validates presence of last_name" do
	      	post = Student.new(first_name: "Ricardo", birthdate: "12/04/1992", control_number:"10460303", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Last name can't be blank"])
	    end

	    it "validates presence of birthdate" do
	      	post = Student.new(first_name: "Ricardo", last_name: "Oliva", control_number:"10460303", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Birthdate can't be blank"])
	    end
	   
	    it "validates presence of control_number" do
	      	post = Student.new(first_name: "Ricardo", last_name: "Oliva", birthdate: "12/04/1992", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Control number can't be blank"])
	    end

	    it "validates presence of semester" do
	      	post = Student.new(first_name: "Ricardo", last_name: "Oliva", birthdate: "12/04/1992", control_number:"10460303")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Semester can't be blank"])
	    end
	   
  	end

end

