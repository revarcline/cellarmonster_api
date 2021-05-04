class OrderSerializer
  include JSONAPI::Serializer
  attributes :id, :quantity, :bottle
end
