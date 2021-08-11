class FavouritesController < ApplicationController
    before_action :set_favourite, only: [:show, :destroy]
    # before_action :find_user, only: [:create]
    before_action :current_user, only: [:show, :create]


    def index
        @favourites = FavouriteHotel.all
        render json: @favourites
    end

    def show
      @current_user.favourite_hotel
        render json: @favourite
      end
    

      def create
        @favourite = @current_user.favourite_hotel.build(favourite_params)
    
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
        if session[:user_id]
          @current_user = User.find_by(id: session[:user_id]) 
        end
      end

      def find_user
        @user = User.find(params[:user_id])
      end
  
      
      def favourite_params
        params.require(:favourite_hotel).permit(:user_id, :hotel_id)
      end
    
end
