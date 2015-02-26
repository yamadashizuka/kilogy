class AddColumnToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :record_id, :integer
  end
end
