class AddNewAttributesToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :sh_country, :string
    add_column :orders, :sh_state, :string
    add_column :orders, :sh_area_code, :string
    add_column :orders, :sh_city, :string
    add_column :orders, :sh_address, :string 
    add_column :orders, :sh_reference, :string 
  end
end
