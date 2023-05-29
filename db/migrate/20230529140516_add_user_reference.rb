class AddUserReference < ActiveRecord::Migration[7.0]
  def change
    add_reference :webdevs, :user, foreign_key: true
  end
end
