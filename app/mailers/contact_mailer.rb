class ContactMailer < ApplicationMailer
	default from: 'register@imofy.ml'
 
  def inquiry_email(agent_id, name, phone,mail, property_id, property_url)
    @user = User.find(agent_id)
    @property = Property.find(property_id)
    @property_url = property_url
    @url  = "http://localhost:3000"
    #email_with_name = %("Hello" <"imofy.official@gmail.com">)
    #mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    mail(to: "salut.amos@gmail.com", subject: "Demande d'informations")
  end
end
