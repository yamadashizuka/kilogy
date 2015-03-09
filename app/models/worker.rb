class Worker < ActiveRecord::Base
  belongs_to :division


  # CSV Upload
  require 'csv'
  def self.import(file)
    CSV.foreach(file.path, encoding: "SJIS:UTF-8", headers: true) do |row|
      product = find_by_id(row["id"]) || new
      product.attributes = row.to_hash.slice(*column_names)
      product.save!
    end
  end

end
