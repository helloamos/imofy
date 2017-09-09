class SendMailController < ApplicationController

	def contact_email
		ContactMailer.contact_email(@user).deliver_now
	end
	def inquiry_email
		agent_id = params[:user_id]
		sender_name = params[:sender_name]
	    sender_email = params[:sender_email]
	    sender_phone = params[:sender_phone]
	    subject = params[:subject]
	    property_id = params[:property_id]
	    property_url = params[:property_url]
		ContactMailer.inquiry_email(agent_id, sender_name, sender_phone,sender_mail, property_id, property_url).deliver_now
		redirect_to contact_path, notice: 'Votre message a été envoyé avec succès!'
	end

end