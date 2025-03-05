class RenameTasksToNotes < ActiveRecord::Migration[7.1]
  def change
    rename_table :tasks, :notes
  end
end
