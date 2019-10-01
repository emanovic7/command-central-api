class FavoritesController < ApplicationController

  def index
    favorites = Favorite.all

    render json: favorites
  end

  def create
    favorite = Favorite.create(favorite_params)
    if favorite.valid?
      render json: favorite
    else
      render json: {errors: favorite.errors.full_messages}, status: 422
    end
  end

  def update
    favorite = Favorite.find(params[:id])
    if favorite.update(favorite_params)
      render json: favorite
    else
      render json: {errors: favorite.errors.full_messages}, status: 422
    end
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.delete
  end


  private
    def favorite_params
      params.permit(:name, :phone, :city, :user_id)
    end


end
