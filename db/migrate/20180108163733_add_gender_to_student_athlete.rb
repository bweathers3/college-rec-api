class AddGenderToStudentAthlete < ActiveRecord::Migration[5.1]
  def change
    add_column :student_athletes, :gender, :string
  end
end
