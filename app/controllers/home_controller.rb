class HomeController < ApplicationController
	def index
		@property_types = PropertyType.all
		@featured = Property.paginate(:page => params[:page], :per_page => 6)
	end
end