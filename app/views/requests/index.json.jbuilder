json.array!(@requests) do |request|
  json.extract! request, :id, :amount, :purpose, :deal_id, :state, :user_id, :deal_id
  json.url request_url(request, format: :json)
end
