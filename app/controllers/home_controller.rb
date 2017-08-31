class HomeController < ApplicationController
	def index
		@property_types = PropertyType.all
		@contract_types = ContractType.all
		@featured = Property.order(created_at: :desc).paginate(:page => params[:page], :per_page => 6)
	end
end