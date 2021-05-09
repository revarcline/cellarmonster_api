class BottlesController < ApplicationController
  def index
    bottles = Bottle.order(:sku)
    render json: BottleSerializer.new(bottles).serializable_hash.to_json
  end

  def show
    bottle = [Bottle.find(params[:id])]
    render json: BottleSerializer.new(bottle).serializable_hash.to_json
  end

  def create
    bottle = Bottle.create(bottle_params)
    render json: BottleSerializer.new(bottle).serializable_hash.to_json
  end

  def update
    bottle = Bottle.find(params[:id])
    bottle.update(bottle_params)
    render json: BottleSerializer.new(bottle).serializable_hash.to_json
  end

  def delete
    bottle = Bottle.find(params[:id])
    bottle.destroy
  end

  protected

  def bottle_params
    params.require(:bottle).permit(:name,
                                   :new_country,
                                   :new_producer,
                                   :appellation,
                                   :region,
                                   :new_varietal,
                                   :color,
                                   :sparkling,
                                   :price,
                                   :vintage,
                                   :notes,
                                   :sku,
                                   :inventory,
                                   :format,
                                   :country_id,
                                   :producer_id,
                                   {
                                     varietals: [:id],
                                     bins: [:id]
                                   })
  end
end
