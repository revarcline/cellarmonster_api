class AddRegionToBottles < ActiveRecord::Migration[6.1]
  def change
    add_column :bottles, :region, :string
  end
end
