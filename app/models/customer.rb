class Customer < ApplicationRecord
	belongs_to :province
	belongs_to :state

	validates :full_name, presense: true
end
