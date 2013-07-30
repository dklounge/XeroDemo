class XeroSessionController < ApplicationController

	
  def new
  	request_token = xero_client.request_token(:oauth_callback => '127.0.0.1')
    session[:request_token] = request_token.token
    session[:request_secret] = request_token.secret

    redirect_to request_token.authorize_url
  end

  def create
  	xero_client.authorize_from_request(
      session[:request_token], 
      session[:request_secret], 
      :oauth_verifier => params[:oauth_verifier] )

    session[:xero_auth] = {
      :access_token => xero_client.access_token.token,
      :access_key => xero_client.access_token.key }

    session.data.delete(:request_token)
    session.data.delete(:request_secret)
  end

  def destroy
  	session.data.delete(:xero_auth)
  end

end
