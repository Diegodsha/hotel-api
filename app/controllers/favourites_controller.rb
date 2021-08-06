class FavouritesController < ApplicationController
    before_action :set_favourite, only: [:show]
    before_action :find_user, only: [:create]

    def index
        @favourites = FavouriteHotel.all
        render json: @favourites
    end

    def show
        render json: @favourite
      end
    

      def create
        @favourite = @user.favourite_hotel.build(favourite_params)
    
        if @favourite.save
          render json: @favourite, status: :created, location: @favourite
        else
            render json: { error: 'Couldn\'t create favourite' }, status: :bad_request
        end
      end

      private
       
    def set_favourite
        @favourite = FavouriteHotel.find(params[:id])
      end

      def find_user
        @user = User.find(params[:user_id])
      end
  
      
      def favourite_params
        params.require(:favourite_hotel).permit(:user_id, :hotel_id)
      end
    
end
