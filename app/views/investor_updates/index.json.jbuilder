json.array!(@investor_updates) do |investor_update|
  json.extract! investor_update, :id, :title, :summary
  json.url investor_update_url(investor_update, format: :json)
end
