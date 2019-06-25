class InvoicesController < ApplicationController
	def index
		@invoices = Invoice.all
	end

	def new
		@invoice = Invoice.new
	end

	def create
	  @invoice = Invoice.new(invoice_params)

	  if @invoice.save
	  	redirect_to @invoice
	  else
	  	render 'new'
	   end
	end

	def edit
  		@invoice = Invoice.find(params[:id])
	end

	def show
		@invoice = Invoice.find(params[:id])
	end

	def update
		@invoice = Invoice.find(params[:id])

		 if @invoice.update(invoice_params)
		   redirect_to @invoice
		 else
		 	render 'edit'
		 end
    end
    
private
	def invoice_params 
		params.require(:invoice).permit(:reference, :invoice_date, :customer, :brandmanager, :narration, :amount, :totalcollection, :balance_due)
    end
end