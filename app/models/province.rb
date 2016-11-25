class Province < ApplicationRecord
	has_many :customers

	# validates :name, presense :true
	
	
end
