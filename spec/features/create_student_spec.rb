require "rails_helper"

feature "Create student" do
	scenario "successfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "oliva@hotmail.com"
			fill_in "Password", with: "12345678"
			fill_in "Password confirmation", with: "12345678"

		click_on "Sign up"	
		click_on "Crear nuevo estudiante"
		
			fill_in "Nombre(s)", with: "Ricardo"
			fill_in "Apellidos", with: "Oliva"
			fill_in "Número de control", with: "10460303"
			fill_in "Semestre", with: "11"
		click_on "Guardar"
		sleep 5
				expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully created."
		
	end


		scenario "unsuccessfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "oliva@hotmail.com"
			fill_in "Password", with: "12345678"
			fill_in "Password confirmation", with: "12345678"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
		click_on "Guardar"
		sleep 5
			expect(current_path).to eq "/students"
			expect(page).to have_content "First name can't be blank"
    		expect(page).to have_content "Last name can't be blank"
    		expect(page).to have_content "Control number can't be blank"
    		expect(page).to have_content "Semester can't be blank"
		
	end

	scenario "First name" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "oliva@hotmail.com"
			fill_in "Password", with: "12345678"
			fill_in "Password confirmation", with: "12345678"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
			
			fill_in "Nombre(s)", with: "Marco"
			fill_in "Apellidos", with: "ochoa"
			fill_in "Número de control", with: "10460302"
			fill_in "Semestre", with: "ASD"
		
			click_on "Guardar"

			expect(current_path).to eq "/students/new"    		
		sleep 5
	end
end