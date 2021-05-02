class ApplicationController < ActionController::API
  def generate_bottles(resource)
    bottles = BottleSerializer.new(resource.bottles).serializable_hash
    bottles[:resource_name] = resource.name
    bottles.to_json
  end
end
