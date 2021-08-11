module SessionsHelper
    # def current_user
    #     User.find_by(id: session[:user_id])
    #   end
    
      def logged_in?
        !current_user.nil?
        p 'hello from logged in'
      end
 
    def current_user
      if session[:user_id]
        @current_user = User.find_by(id: session[:user_id]) 
      end
    end
  
    # def log_out
    #   session.delete(:user_id)
    #   @current_user = nil
    # end
end