class Property < ApplicationRecord
	
	enum real_estate_type:  [:house, :department, :land, :commercial_ground]
	validates_presence_of :internal_number, :if => lambda { |o| (o.real_estate_type = 2 ) || (o.real_estate_type = 4)}

end

