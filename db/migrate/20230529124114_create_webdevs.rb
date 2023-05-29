class CreateWebdevs < ActiveRecord::Migration[7.0]
  def change
    create_table :webdevs do |t|
      t.string :service_type
      t.integer :price
      t.integer :experience_year
      t.string :availablity

      t.timestamps
    end
  end
end
