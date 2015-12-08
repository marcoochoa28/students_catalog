require "rails_helper"

feature "Edit student" do
	scenario "successfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "ochoa@hotmail.com"
			fill_in "Password", with: "12345678"
			fill_in "Password confirmation", with: "12345678"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
		
			fill_in "Nombre(s)", with: "Marco"
			fill_in "Apellidos", with: "Ochoa"
			fill_in "Número de control", with: "10460302"
			fill_in "Semestre", with: "11"

		click_on "Guardar"
		click_on "Editar"

			fill_in "Apellidos", with: "Pimentel"
		click_on "Guardar"
		sleep 5

			expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully updated."
		
	end
end