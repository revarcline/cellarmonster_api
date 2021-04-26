class CreateBins < ActiveRecord::Migration[6.1]
  def change
    create_table :bins do |t|
      t.string :location

      t.timestamps
    end
  end
end
