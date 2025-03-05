class AddContentToNotes < ActiveRecord::Migration[7.1]
  def change
    add_column :notes, :content, :text
  end
end