json.array!(@chunks) do |chunk|
  json.extract! chunk, :id, :order_id, :bean_id, :quantity
  json.url chunk_url(chunk, format: :json)
end
