class CreateBottlesVarietalsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :bottles, :varietals do |t|
      t.index :bottle_id
      t.index :varietal_id
    end
  end
end
