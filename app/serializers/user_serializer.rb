class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :name, :role, :last_sign_in_at, :created_at
end
