class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :location
      t.string :weather
      t.integer :distance

      t.timestamps
    end
  end
end
