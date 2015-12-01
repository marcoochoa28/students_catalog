class Student < ActiveRecord::Base
  validates :first_name, :last_name, :birthdate,
    :control_number, :semester, presence: true

  validates :first_name, uniqueness: { scope: [ :last_name, :birthdate ] }

  def name
    "#{first_name} #{last_name}"
  end
end
