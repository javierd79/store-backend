class AddColumnToOrderItem < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :item_price, :integer
  end
end
