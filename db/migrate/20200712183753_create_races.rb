class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.integer :driver_id
      t.integer :track_id
      t.integer :track_time

      t.timestamps
    end
  end
end
