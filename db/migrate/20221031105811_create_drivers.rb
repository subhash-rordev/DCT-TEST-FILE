class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.text :address
      t.string :licence
      t.datetime :date_of_birth
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
