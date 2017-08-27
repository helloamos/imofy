class ContractType < ApplicationRecord

	# Relationship
	has_many :properties

	# Data validation.
	validates :name, presence: true, uniqueness: true
end
