class BinsController < ApplicationController
  def index
    bins = Bin.order(:name)
    render json: BinSerializer.new(bins).serializable_hash.to_json
  end

  def show
    bin = Bin.find(params[:id])
    bottles = generate_bottles(bin)
    render json: bottles
  end
end
