class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :location
      t.string :weather
      t.decimal :distance
      t.boolean :raced, default: false

      t.timestamps
    end
  end
end
