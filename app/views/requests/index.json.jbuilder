json.array!(@requests) do |request|
  json.extract! request, :id, :amount, :purpose
  json.url request_url(request, format: :json)
end
