class BottlesController < ApplicationController
  def index
    bottles = Bottle.all
    render json: BottleSerializer.new(bottles).serializable_hash.to_json
  end
end
