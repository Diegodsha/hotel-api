class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :update, :destroy]

  # GET /hotels
  def index
    @hotels = Hotel.all

    render json: HotelSerializer.new(@hotels).serialized_json
  end

  # GET /hotels/1
  def show
      render json: HotelSerializer.new(@hotel).serialized_json
  end

  # POST /hotels
  def create
    @hotel = Hotel.new(hotel_params)

    if @hotel.save
      render json: @hotel, status: :created, location: @hotel
    else
      render json: @hotel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hotels/1
  def update
    if @hotel.update(hotel_params)
      render json: @hotel
    else
      render json: @hotel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hotels/1
  def destroy
    @hotel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hotel_params
      params.require(:hotel).permit(:name, :description, :price_nigth, :services, :img_url)
    end
end
