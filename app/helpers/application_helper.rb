module ApplicationHelper

	def property_type(id)
		property_type = PropertyType.find(id)
		property_type.name
	end

	def status(id)
		status = Status.find(id)
		status.name
	end



	def contract_type(id)
		contract_type = ContractType.find(id)
		contract_type.name
	end

	def unity_name(id)
		unity = Unity.find(id)
		unity.name
	end

	def user_name(id)
		user = User.find(id)
		user.login
	end

	def user_company(id)
		user = User.find(id)
		user.company
	end

	def user_phone(id)
		user = User.find(id)
		user.phone
	end

	def user_address(id)
		user = User.find(id)
		user.address
	end

	def user_city(id)
		user = User.find(id)
		user.city
	end


	def user_thumbnail(id)
		user = User.find(id)
		user.avatar.url(:thumb)
	end

	def property_title(id)
		property = Property.find(id)
		property.name
	end


end
