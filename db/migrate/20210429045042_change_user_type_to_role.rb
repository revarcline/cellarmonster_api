class ChangeUserTypeToRole < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :type, :role
  end
end
