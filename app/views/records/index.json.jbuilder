json.array!(@records) do |record|
  json.extract! record, :id, :finalvalue
  json.url record_url(record, format: :json)
end
