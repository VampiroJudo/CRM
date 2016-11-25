class Province < ApplicationRecord
	has_many :customers


	
	validates :full_name, presense: true
	validates :last_name, presense: true
end
