class FinderController < ApplicationController

	def index
		@page_title = 'All Customers'
		@customers = Customer.all
	end

	def alphabetized
		@page_total = 'Alphabetized Customers'
		@customers = Customer.order(:full_name, :last_name)
		render :index
	end
	
	def missing_email
		@page_total = 'Customers Missing Email Addresses'
		@customers = Customer.where(email_address: '')
		render :index
	end
end
