class AddColumnToChecks < ActiveRecord::Migration
  def change
    add_column :checks, :record_id, :integer
  end
end
