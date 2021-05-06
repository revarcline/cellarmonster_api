class OrderSerializer
  include JSONAPI::Serializer
  attributes :id, :quantity, :bottle, :user, :created_at
  attribute :bottle_producer do |order|
    order.bottle.producer.name
  end
  attribute :bins do |order|
    order.bottle.bins.map(&:name).join(' ')
  end
  attribute :created do |order|
    order.created_at.strftime('%a %T')
  end
end
