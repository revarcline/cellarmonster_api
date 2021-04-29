class UsersController < ApplicationController
  # GET /users
  def index
    # serialize all users ordered by last logged in
    users = User.order(last_sign_in_at: :desc)
    render json: UserSerializer.new(users).serializable_hash.to_json
  end
end
