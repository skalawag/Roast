json.array!(@orders) do |order|
  json.extract! order, :id, :roast_id, :amount
  json.url order_url(order, format: :json)
end
