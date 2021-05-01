class CountrySerializer
  include JSONAPI::Serializer
  attributes :name, :id
end
