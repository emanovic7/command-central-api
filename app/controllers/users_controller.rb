class UsersController < ApplicationController

  def profile
    render json: {current_user: current_user, id: current_user.id}
  end

  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token(user.id)
      render json: {token: token}
    else
      render json: { errors: user.erros.full_messages }, status: 422
    end
  end


  private
    def user_params
      params.permit(:username, :password, :name)
    end

end
