class SessionsController < ApplicationController

  

  def create
    @user = User.find_by(name: params[:name])

    if @user
      session[:user_id] = @user.id
      render json: { signed_in: true, user: @user }
    else
        render json: { error: 'Please enter an existing username or create an account' }, status: :unauthorized
    end
  end

  def login; end

  def destroy
    session.delete(:user_id)
    render json: { signed_out: true, message: 'Signed out successfully' }, status: :ok
  end
end
