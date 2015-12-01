class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :control_number
      t.integer :semester

      t.timestamps null: false
    end
  end
end
