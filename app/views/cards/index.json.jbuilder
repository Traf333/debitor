json.array!(@cards) do |card|
  json.extract! card, :id, :count, :identifier, :buyer_id
  json.url card_url(card, format: :json)
end
