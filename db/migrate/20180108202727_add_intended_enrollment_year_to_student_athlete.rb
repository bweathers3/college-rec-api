class AddIntendedEnrollmentYearToStudentAthlete < ActiveRecord::Migration[5.1]
  def change
    add_column :student_athletes, :intended_enrollment_year, :string
  end
end
