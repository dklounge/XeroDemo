class InvoicesController < ApplicationController

  def index
    debugger 
    @invoices = xero_client.Invoice.all
  end

	def show
		@results = []
		
		url = URI.parse('https://api.xero.com/api.xro/2.0/Invoices') # URL of the call
		response = http.get('https://api.xero.com/api.xro/2.0/Invoices')
		# response = {"ID"=> 123,
		# 	"body"=> 'is a string'}

		@results = JSON.parse response.to_json
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
