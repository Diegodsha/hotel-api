class UsersController < ApplicationController
  include CurrentUserConcern
  before_action :set_user, only: %i[show edit update destroy]

  def index
    @users = User.all
    if @users
      render json: { users: @users }
    else
      render json: { error: 'No users found' }, status: :internal_server_error
    end
  end

  # GET /users/1 or /users/1.json
  def show
    if @user
      render json: { user: @user }
    else
      render json: { error: 'User id not found' }, status: :internal_server_error
    end
  end

  #  GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit; end

  # POST users.json
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render json: { user: @user }, status: :created
    else
      render json: { error: @user.errors.full_messages }, status: :internal_server_error
    end
  end

  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      render json: { message: 'Profile successfully updated' }, status: :ok
    else
      render json: { error: 'Could not update profile' }, status: :bad_request
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    render json: { error: 'Your account was successfully destroyed.' }
  end

  private

  def authenticate
    return if logged_in?

    render json: { error: 'User not found' }, status: :unauthorized
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
