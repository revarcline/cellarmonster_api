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
    bottle = Bottle.new(bottle_params)
    bottle.new_country = params[:new_country] unless params[:new_country].blank?
    bottle.new_producer = params[:new_producer] unless params[:new_producer].blank?
    bottle.new_varietal = params[:new_varietal] unless params[:new_varietal].blank?
    bottle.save
    render json: BottleSerializer.new(bottle).serializable_hash.to_json
  end

  def update
    bottle = Bottle.find(params[:id])
    bottle.update(bottle_params)
    bottle.new_country = params[:new_country] unless params[:new_country].blank?
    bottle.new_producer = params[:new_producer] unless params[:new_producer].blank?
    bottle.new_varietal = params[:new_varietal] unless params[:new_varietal].blank?
    render json: BottleSerializer.new(bottle).serializable_hash.to_json
  end

  def destroy
    bottle = Bottle.find(params[:id])
    bottle.destroy
  end

  protected

  def bottle_params
    params.require(:bottle).permit(:name,
                                   :appellation,
                                   :region,
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
                                   :new_country,
                                   :new_producer,
                                   :new_varietal,
                                   {
                                     varietals: [:id],
                                     bins: [:id]
                                   })
  end
end
