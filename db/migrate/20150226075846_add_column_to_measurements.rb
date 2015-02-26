class AddColumnToMeasurements < ActiveRecord::Migration
  def change
    add_column :measurements, :record_id, :integer
  end
end
