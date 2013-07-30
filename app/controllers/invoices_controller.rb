class InvoicesController < ApplicationController

  def index
  #	@clients = xero_client.Contact.all
  	@methods = xero_client.methods.sort
  	@invoices = xero_client.Invoice
  end

	def show

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