class AddArtistToMixtapes < ActiveRecord::Migration
  def change
    add_column :mixtapes, :artist_id, :integer
  end
end
