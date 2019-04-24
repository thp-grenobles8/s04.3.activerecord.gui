class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title# title qui porte le titre de la chanson et est de type string.
      t.string :album# album qui porte le titre de l'album et est de type string.
      t.string :artist# artist qui porte le nom de l'artiste et est de type string.
      t.integer :duration# duration qui porte la durée de la chanson (en millisecondes) et est de type integer.
      t.integer :size# size qui porte la taille (en octets) de la chanson et est de type integer.
      t.float :price# price qui porte le prix de la chanson et est de type float.
      t.timestamps
    end
  end
end
