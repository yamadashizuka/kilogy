json.array!(@records) do |record|
  json.extract! record, :id, :worker_id, :latitude, :longitude
  json.url record_url(record, format: :json)
end
