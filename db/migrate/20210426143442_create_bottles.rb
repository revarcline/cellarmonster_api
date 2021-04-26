class CreateBottles < ActiveRecord::Migration[6.1]
  def change
    create_table :bottles do |t|
      t.string :name
      t.string :appellation
      t.string :color
      t.boolean :sparkling
      t.decimal :price, precision: 10, scale: 2
      t.integer :vintage, limit: 4
      t.text :notes

      t.timestamps
    end
  end
end
