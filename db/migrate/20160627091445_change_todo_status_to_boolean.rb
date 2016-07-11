class ChangeTodoStatusToBoolean < ActiveRecord::Migration[5.0]
  def change
    change_column :todos, :status, :boolean
    rename_column :todos, :status, :is_completed
    add_column :todos, :is_archived, :boolean
  end
end
