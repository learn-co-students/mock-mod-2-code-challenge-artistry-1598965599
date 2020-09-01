class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.integer :artist_id
      t.integer :instrument_id
      t.timestamps
    end
  end
end
