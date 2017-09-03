# Sends contact form email.
  def send_email
    name = params[:name]
    sender = params[:email]
    subject = params[:subject]
    body = params[:body]
    ContactMailer.contactez_nous(name,sender,subject, body).deliver_now
    redirect_to contact_path, notice: 'Votre message a été envoyé avec succès!'
  end