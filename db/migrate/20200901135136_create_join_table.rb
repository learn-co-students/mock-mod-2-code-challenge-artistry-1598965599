class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :artists, :instruments do |t|
      t.index :artist_id
      t.index :instrument_id
    end
  end
end
