class PropertyType < ApplicationRecord

	# Relationship
	has_many :properties
	# Data validation.
	validates_presence_of :name
end
