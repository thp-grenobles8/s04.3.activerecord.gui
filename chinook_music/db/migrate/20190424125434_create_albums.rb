class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title# title qui porte le titre de l'album et est de type string.
      t.string :artist# artist qui porte nom de l'artiste et est de type string.
      t.timestamps
    end
  end
end
