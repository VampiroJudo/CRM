class FinderController < ApplicationController

	def index
		@page.total = 'All Customers'
		@customers = Customer.all
	end

	def alphabetized
		@customers = Customer.order(:full_name, :last_name)
		render: index
	end
	
	def missing_email
		@customers = Customer.where(email_address: '')
		render: index
	end
end
