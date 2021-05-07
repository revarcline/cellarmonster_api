class OrdersController < ApplicationController
  def index
    orders = Order.order(created_at: :desc)
    render json: OrderSerializer.new(orders).serializable_hash.to_json
  end

  def user_orders
    orders = Order.where(user_id: params[:user_id]).order(created_at: :desc).limit(8)
    render json: OrderSerializer.new(orders).serializable_hash.to_json
  end

  def create
    order = Order.create(order_params)
    render json: OrderSerializer.new(order).serializable_hash.to_json
  end

  protected

  def order_params
    params.require(:order).permit(:quantity, :bottle_id, :user_id)
  end
end
