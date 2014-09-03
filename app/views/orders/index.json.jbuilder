json.array!(@orders) do |order|
  json.extract! order, :id, :profile_id, :eight_oz, :twelve_oz, :sixteen_oz, :eighty_oz, :total_oz
  json.url order_url(order, format: :json)
end
