class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :webdev, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price
      t.string :status

      t.timestamps
    end
  end
end
