class AddUserToStudentAthletes < ActiveRecord::Migration[5.1]
  def change
    add_reference :student_athletes, :user, foreign_key: true
  end
end
