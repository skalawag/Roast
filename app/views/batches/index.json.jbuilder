json.array!(@batches) do |batch|
  json.extract! batch, :id, :beans_id, :amount
  json.url batch_url(batch, format: :json)
end
