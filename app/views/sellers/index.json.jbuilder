json.array!(@sellers) do |seller|
  json.extract! seller, :id, :name, :password_digest
  json.url seller_url(seller, format: :json)
end
