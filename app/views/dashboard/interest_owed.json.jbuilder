json.array! @deals do |deal|
  next if deal.marked_as_spam_by?(current_user)

  json.body deal.body
  json.author do
    json.first_name deal.author.first_name
    json.last_name deal.author.last_name
  end
end