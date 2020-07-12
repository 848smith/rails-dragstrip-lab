class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :experience
      t.string :country
      t.string :password_digest

      t.timestamps
    end
  end
end
