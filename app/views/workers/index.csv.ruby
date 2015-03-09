require 'csv'

csv_data = CSV.generate( "", {:row_sep => "\r\n", :force_quotes => true} ) do |csv|
  csv << Worker.column_names
  @workers.each do |model|
    csv << model.attributes.values_at(*Worker.column_names)
  end
end

csv_data.encode(Encoding::SJIS)
