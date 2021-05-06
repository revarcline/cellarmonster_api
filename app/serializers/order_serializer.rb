class OrderSerializer
  include JSONAPI::Serializer
  attributes :id, :quantity, :bottle, :user
  attribute :bottle_producer do |order|
    order.bottle.producer.name
  end
end
