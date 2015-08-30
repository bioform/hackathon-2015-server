json.requests @requests do |request|
  json.id request.id
  json.amount number_to_currency(request.amount) 
  json.purpose request.purpose
  json.deal_id request.deal_id
  json.user_id request.user_id
  json.state request.state
end