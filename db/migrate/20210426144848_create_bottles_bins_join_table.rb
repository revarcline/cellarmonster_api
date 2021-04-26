class CreateBottlesBinsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :bottles, :bins do |t|
      t.index :bottle_id
      t.index :bin_id
    end
  end
end
