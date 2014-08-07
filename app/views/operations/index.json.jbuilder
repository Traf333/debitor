json.array!(@operations) do |operation|
  json.extract! operation, :id, :value, :comment, :buyer_id, :seller_id
  json.url operation_url(operation, format: :json)
end
