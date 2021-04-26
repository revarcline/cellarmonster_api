class CreateBottlesCountriesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :bottles, :countries do |t|
      t.index :bottle_id
      t.index :country_id
    end
  end
end
