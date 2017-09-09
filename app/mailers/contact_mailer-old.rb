class ContactMailer < ApplicationMailer
	#default from: 'skillaps@gmail.com'
 
  def contactez_nous(name,from, subject, body)
    @name = name
    @subject = subject
    @from = from
    @body  = body
    mail(to: 'skillaps@gmail.com', subject: @subject)
  end
end
