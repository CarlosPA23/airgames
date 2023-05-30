class RenameColumnToGames < ActiveRecord::Migration[7.0]
  def change
    rename_column :games, :users_id, :user_id
  end
end
