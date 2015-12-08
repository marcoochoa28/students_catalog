require "rails_helper"
feature "Delete student" do
	scenario "successfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "oliva@hotmail.com"
			fill_in "Password", with: "12345678"
			fill_in "Password confirmation", with: "12345678"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
		
			fill_in "Nombre(s)", with: "Félix"
			fill_in "Apellidos", with: "Alonso"
			fill_in "Número de control", with: "10460303"
			fill_in "Semestre", with: "11"

		click_on "Guardar"
		click_on "Borrar"

			sleep 5
			a = page.driver.browser.switch_to.alert
    		expect(a.text).to eq("Are you sure?")
    		a.accept
			expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully destroyed."
		
	end

end