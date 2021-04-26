class AddInventoryAndTotalSoldToBottles < ActiveRecord::Migration[6.1]
  def change
    add_column :bottles, :inventory, :integer
    add_column :bottles, :total_sold, :integer, default: 0
  end
end
