class AddCountryToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :country, :text
  end
end
