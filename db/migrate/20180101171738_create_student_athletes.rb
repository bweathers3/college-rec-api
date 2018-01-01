class CreateStudentAthletes < ActiveRecord::Migration[5.1]
  def change
    create_table :student_athletes do |t|
      t.text :firstName
      t.text :middleName
      t.text :lastName
      t.date :birthdate

      t.timestamps
    end
  end
end
