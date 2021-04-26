class AddFormatToBottles < ActiveRecord::Migration[6.1]
  def change
    add_column :bottles, :format, :string
  end
end
