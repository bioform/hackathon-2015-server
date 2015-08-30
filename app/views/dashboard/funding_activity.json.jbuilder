json.array!(@current_deals) do |deal|
  json.extract! deal, :id, :amount, :state, :updated_at
  json.url deal_url(deal, format: :json)
end
