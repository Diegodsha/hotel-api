module CurrentUserConcern
    extend ActiveSupport::Concern
      included do
      before_action :current_user, :logged_in?
      end
      
      def current_user
          User.find_by(id: session[:user_id]) if session[:user_id]
      end
      
      def logged_in?
        !current_user.nil?
      end

end