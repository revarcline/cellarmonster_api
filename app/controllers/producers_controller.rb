class ProducersController < ApplicationController
  def index
    producers = Producer.all
    render json: ProducerSerializer.new(producers).serializable_hash.to_json
  end

  def show
    producer = Producer.find(params[:id])
    bottles = producer.bottles
    render json: BottleSerializer.new(bottles).serializable_hash.to_json
  end
end
