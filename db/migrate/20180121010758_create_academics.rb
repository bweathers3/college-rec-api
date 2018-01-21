class CreateAcademics < ActiveRecord::Migration[5.1]
  def change
    create_table :academics do |t|
      t.text :schoolName
      t.text :counselorName
      t.text :counselorEmail
      t.string :counselorPhone
      t.string :gpa
      t.string :classRank
      t.string :sat
      t.string :act
      t.references :student_athlete, foreign_key: true

      t.timestamps
    end
  end
end
