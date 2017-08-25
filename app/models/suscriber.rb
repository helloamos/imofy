class Suscriber < ApplicationRecord
	validates_presence_of :email, uniqueness: true
end
