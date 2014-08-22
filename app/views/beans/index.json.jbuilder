json.array!(@beans) do |bean|
  json.extract! bean, :id, :name, :green_weight
  json.url bean_url(bean, format: :json)
end
