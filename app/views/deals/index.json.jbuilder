json.array!(@deals) do |deal|
  json.extract! deal, :id, :user_id, :name, :address, :amount, :term, :loan_position, :funded_date, :purchase_price, :current_value, :borrowers_equity, :completion_value, :zip_code, :rate, :state
  json.url deal_url(deal, format: :json)
end
