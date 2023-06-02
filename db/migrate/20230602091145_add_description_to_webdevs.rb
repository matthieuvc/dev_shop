class AddDescriptionToWebdevs < ActiveRecord::Migration[7.0]
  def change
    add_column :webdevs, :description, :text
  end
end
