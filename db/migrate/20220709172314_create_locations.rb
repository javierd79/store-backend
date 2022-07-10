class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :state
      t.string :area_code
      t.string :city
      t.string :address
      t.string :reference

      t.timestamps
    end
  end
end
