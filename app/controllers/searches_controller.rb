class SearchesController < ApplicationController
	def simple_search
		@result = Property.simple_search(params[:contract_type], params[:property_type]).order(created_at: :desc).paginate(:page => params[:page], :per_page => 6)
	end

	def advanced_search
	end
end