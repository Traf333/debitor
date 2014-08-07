json.array!(@buyers) do |buyer|
  json.extract! buyer, :id, :name, :balance
  json.url buyer_url(buyer, format: :json)
end
