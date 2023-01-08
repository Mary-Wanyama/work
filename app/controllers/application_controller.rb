class ApplicationController < ActionController::API
    include ActionController::Cookies

    before_action :authorize
    # # before_action :require_login
  
    # # def require_login
    # #   redirect_to new_session_path unless session.include? :user_id
    # # end
  
    def authorize 
      return render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :user_id
    end
end
