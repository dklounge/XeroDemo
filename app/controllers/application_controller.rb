class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	private

	def xero_client
		return @xero_client if @xero_client

    @xero_client = Xeroizer::PublicApplication.new(ENV['XERO_API_KEY'], ENV['XERO_API_SECRET'])

    # Add AccessToken if authorised previously.
    if session[:xero_auth]
        @xero_client.authorize_from_access(
          session[:xero_auth][:access_token],
          session[:xero_auth][:access_key] )
    end

    @xero_client
   end

end
