class PagesController < ApplicationController
	def landing_page
	end

	def newsletter_suscribe
		 @suscriber = Suscriber.new
	end

end