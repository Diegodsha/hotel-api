class FavouritesController < ApplicationController
  before_action :set_favourite, only: %i[show destroy]
  before_action :find_user, only: %i[create index]
  # before_action :current_user, only: [:show, :create]

  def index
    @favourites = FavouriteHotel.where(user_id: @user.id)
    render json: @favourites
  end

  def show
    render json: @favourite
  end

  def create
    @favourite = @user.favourite_hotel.build(favourite_params)

    if @favourite.save
      render json: @favourite, status: :created
    else
      render json: { error: 'Couldn\'t create favourite' }, status: :bad_request
    end
  end

  def destroy
    @favourite.destroy
  end

  private

  def set_favourite
    @favourite = FavouriteHotel.find(params[:id])
  end

  def set_current_user
    p 'hello from favorites'
    @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def favourite_params
    params.require(:favourite_hotel).permit(:user_id, :hotel_id)
  end
end
