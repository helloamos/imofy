module ApplicationHelper

	def property_type_id_to_name(id)
		property_type = PropertyType.find(id)
		property_type.name
	end

	def status_id_to_name(id)
		status = Status.find(id)
		status.name
	end
end
