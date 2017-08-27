class Suscriber < ApplicationRecord
	validates :email, uniqueness: true
end
