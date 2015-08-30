json.current_deals @current_deals do |deal|
  json.id deal.id
  json.amount number_to_currency(deal.amount) 
  json.state deal.state 
  json.updated_at deal.updated_at
end