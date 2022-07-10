class ChangeOrderItemPriceDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:order_items, :item_price, 0)
  end
end
