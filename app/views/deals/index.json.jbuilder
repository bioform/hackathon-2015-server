json.deals @deals do |deal|
  json.id deal.id
  json.name deal.name
  json.address deal.address
  json.amount number_to_currency(deal.amount)
  json.term deal.term
  json.loan_position deal.loan_position
  json.funded_date deal.funded_date
  json.purchase_price deal.purchase_price 
  json.current_value deal.current_value 
  json.borrowers_equity deal.borrowers_equity 
  json.completion_value deal.completion_value 
  json.zip_code deal.zip_code
  json.user_id deal.user_id
  json.rate deal.rate
  json.state deal.state
end