class AddSkuToBottles < ActiveRecord::Migration[6.1]
  def change
    add_column :bottles, :sku, :string
  end
end
