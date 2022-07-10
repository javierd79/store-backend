class ChangeOrderTotalPriceDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:orders, :total_price, 0)
    change_column :orders, :total_price, :integer
    
  end
end
