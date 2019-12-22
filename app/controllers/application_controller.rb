require 'open3'
class ApplicationController < ActionController::Base
  protect_from_forgery :except => [:destroy] 

  # Make the current_user method available to views also, not just controllers:
    helper_method :current_account

    # Define the current_user method:
    def current_account
      # Look up the current account based on account_id in the session cookie:
      if session[:account_id]
        @current_account = Account.find(session[:account_id])
      end
      #logger.debug("current_account: #{@current_account.attributes.inspect}")
    end

    # authorize method redirects user to login page if not logged in:
        def authorize
          redirect_to login_path, alert: 'You must be logged in to access this page.' if current_account.nil?
        end
end
