class Customer < ApplicationRecord
	belongs_to :province
	belongs_to :state
end
