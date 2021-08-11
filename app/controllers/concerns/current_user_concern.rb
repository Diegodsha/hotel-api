module CurrentUserConcern
    extend ActiveSupport::Concern

      included do
      before_action :set_current_user #, :logged_in?
      end
      
      def set_current_user
        p 'hello from concern'
        if session[:user_id]
          @current_user = User.find_by(id: session[:user_id]) 
        end
      end
      
      def logged_in?
        !current_user.nil?
      end

end