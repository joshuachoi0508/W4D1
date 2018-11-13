class AddPresenceConstraintsToModels < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :username, :string, null: false
    change_column :artworks, :title, :string, null: false
    change_column :artworks, :image_url, :string, null: false 
    change_column :artworks, :artist_id, :integer, null: false
  end
end