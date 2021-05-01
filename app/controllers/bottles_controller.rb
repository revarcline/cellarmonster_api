class BottlesController < ApplicationController
  def index
    bottles = Bottle.all
    render json: BottleSerializer.new(bottles).serializable_hash.to_json
  end

  def show
    bottle = Bottle.find(params[:id])
    render json: BottleSerializer.new(bottle).serializable_hash.to_json
  end
end
