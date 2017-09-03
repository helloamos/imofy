class PagesController < ApplicationController
	def landing_page
	end

	def newsletter_suscribe
		 @suscriber = Suscriber.new
	end

	def privacy_policy
		render :layout => "application"
	end

	def cgu
		render :layout => "application"
	end

	def blog
		render :layout => "application"
	end

	def faq
		render :layout => "application"
	end

	def services
		render :layout => "application"
	end

	def partenaires
		render :layout => "application"
	end

	def advertise
		render :layout => "application"
	end

	def contact
		render :layout => "application"
	end

end