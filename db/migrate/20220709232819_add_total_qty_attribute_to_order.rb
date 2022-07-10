class AddTotalQtyAttributeToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :total_qty, :integer, :default => 0
  end
end
