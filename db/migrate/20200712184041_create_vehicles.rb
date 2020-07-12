class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :trim
      t.integer :horsepower

      t.timestamps
    end
  end
end
