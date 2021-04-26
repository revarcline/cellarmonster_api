class CreateBottlesProducersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :bottles, :producers do |t|
      t.index :bottle_id
      t.index :producers_id
    end
  end
end
