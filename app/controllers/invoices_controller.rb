class InvoicesController < ApplicationController

	require 'uri'
	require 'json'
	require 'net/http'

  def index
    @invoices = Invoice.all
  end

	def show
		@results = []
		
		url = URI.parse('https://api.xero.com/api.xro/2.0/Invoices') # URL of the call
		response = Net::HTTP(url.host, url.port) do |http|
			http.get('invoices/show')
		end

		@results = JSON.parse response.body
	end 

	# def index
	# 	@invoices = Invoice.all
	# end

	# # method toshow all invoices
	# def all
	# 	@invoices = Idea.new(params[:idea])
		
	# 	# particular name & amount
	# 	@invoices = Invoice.all(:where => 'Contact.Name=="Basket Case" && Type=="ACCREC" && AmountDue<>0')

	# 	# all voided
	# 	@invoices = Invoice.all(:where => 'Status=="VOIDED"')
	# end

end
