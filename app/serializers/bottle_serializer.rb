class BottleSerializer
  include JSONAPI::Serializer
  attributes :country, :producer, :name, :appellation, :color, :sparkling,
             :price, :vintage, :notes, :sku, :inventory, :total_sold, :format,
             :region, :varietals, :bins
end
