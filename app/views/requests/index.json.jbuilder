json.array!(@requests) do |request|
  json.extract! request, :id, :amount, :purpose, :deal_id, :state
  json.url request_url(request, format: :json)
end
