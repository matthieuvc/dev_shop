class RenameColumnInWebdev < ActiveRecord::Migration[7.0]
  def change
    rename_column :webdevs, :availablity, :availability
  end
end
