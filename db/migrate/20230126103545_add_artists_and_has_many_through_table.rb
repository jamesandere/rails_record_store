class AddArtistsAndHasManyThroughTable < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.timestamps
    end

    create_table :album_artists do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :album, index: true
      t.timestamps
    end
  end
end
