class UsersController < ApplicationController

  def profile
    render json: current_user
  end

  def index
    # remove after debugging.
    
    # users = User.all
    # render json: users
  end

  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token(user.id)
      render json: {token: token}
    else
      render json: { errors: user.errors.full_messages }, status: 422
    end
  end


  private
    def user_params
      params.permit(:name, :username, :password)
    end

end
 De
