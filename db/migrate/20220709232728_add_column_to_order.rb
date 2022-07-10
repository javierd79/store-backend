class AddColumnToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :sh_rate, :integer
  end
end
