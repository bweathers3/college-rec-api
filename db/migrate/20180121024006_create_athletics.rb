class CreateAthletics < ActiveRecord::Migration[5.1]
  def change
    create_table :athletics do |t|
      t.string :stat1
      t.string :stat2
      t.string :stat3
      t.string :stat4
      t.string :stat5
      t.string :stat6
      t.string :stat7
      t.string :stat8
      t.string :stat9
      t.string :stat10
      t.string :stat11
      t.string :stat12
      t.references :student_athlete, foreign_key: true

      t.timestamps
    end
  end
end
