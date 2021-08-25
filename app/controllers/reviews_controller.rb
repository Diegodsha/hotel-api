class ReviewsController < ApplicationController
  include CurrentUserConcern
  before_action :set_hotel, only: [:hotel_reviews]
  before_action :find_user, only: [:create]
  before_action :set_review, only: %i[show update destroy]

  # GET /reviews
  def index
    @reviews = Review.all

    render json: @reviews
  end

  def hotel_reviews
    @hotel_reviews = Review.where(hotel_id: @hotel.id)

    render json: @hotel_reviews
  end

  # GET /reviews/1
  def show
    render json: @review
  end

  # POST /reviews
  def create
    @review = @user.reviews.build(review_params)

    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.

  def set_review
    @review = Review.find(params[:id])
  end

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  # Only allow a list of trusted parameters through.
  def review_params
    params.require(:review).permit(:title, :body, :score, :hotel_id, :user_id)
  end
end
