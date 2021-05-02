class ProducersController < ApplicationController
  def index
    producers = Producer.all
    render json: ProducerSerializer.new(producers).serializable_hash.to_json
  end

  def show
    producer = Producer.find(params[:id])
    bottles = generate_bottles(producer)
    render json: bottles
  end
end
