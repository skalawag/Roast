json.array!(@beans) do |bean|
  json.extract! bean, :id, :name, :weight_loss_factor
  json.url bean_url(bean, format: :json)
end
