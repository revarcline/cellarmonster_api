class ChangeBinLocationToName < ActiveRecord::Migration[6.1]
  def change
    rename_column :bins, :location, :name
  end
end
