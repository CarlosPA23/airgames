class AddAddressToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :address, :string
    add_column :games, :latitude, :float
    add_column :games, :longitude, :float
  end
end
