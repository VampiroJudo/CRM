class FinderController < ApplicationController

	def index
		@page.total = 'All Customers'
		@customers = Customer.all
	end

	def alphabetized
		@customers = Customer.order(:full_name, :last_name)
	end
	
	def missing_email
		@customers = Customer.where(email_address: '')
	end
end
