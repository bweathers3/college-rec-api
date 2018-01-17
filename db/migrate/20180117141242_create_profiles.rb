class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :student_athlete, foreign_key: true
      t.text :street
      t.text :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
      t.text :siblings

      t.timestamps
    end
  end
end
