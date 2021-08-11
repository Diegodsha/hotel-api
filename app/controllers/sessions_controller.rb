class SessionsController < ApplicationController
  # include CurrentUserConcern
  before_action :current_user

  def create
    @user = User.find_by(name: params[:name])

    if @user
      session[:user_id] = @user.id
      render json: { signed_in: true, user: @user,message: 'Signed in successfully' }
    else
      render json: { error: 'Please enter an existing username or create an account' }
    end
    p "usersession id: #{session[:user_id]}"
    # p "cuurentuser: #{@current_user}"
  end

  def printSessionId
    render json: {
      id: session[:user_id]
    }
  end
  

  def logged_in
    p "loggedin id: #{session[:user_id]}"
   if @current_user
    render json: {
      logged_in: true,
      user: @current_user
    }
  else
    render json: {
      logged_in: false
    }
   end
  end

  def destroy
    session.delete(:user_id)
    render json: { signed_out: true, message: 'Signed out successfully' }, status: :ok
  end
end
