class VarietalsController < ApplicationController
  def index
    varietals = Varietal.all
    render json: VarietalSerializer.new(varietals).serializable_hash.to_json
  end

  def show
    varietal = Varietal.find(params[:id])
    bottles = generate_bottles(varietal)
    render json: bottles
  end
end
