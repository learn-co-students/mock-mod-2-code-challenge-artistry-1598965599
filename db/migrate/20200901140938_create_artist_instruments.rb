class CreateArtistInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_instruments do |t|
      t.belongs_to :artist, null: false, foreign_key: true
      t.belongs_to :instrument, null: false, foreign_key: true

      t.timestamps
    end
  end
end
