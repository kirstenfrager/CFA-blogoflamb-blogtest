class ContactMailer < ApplicationMailer

  default from: 'contact@coderfactoryacademy.com'

  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: "kirsten.frager@hotmail.com",
          subject: 'New message from website') do |format|
          format.html { render 'send_contact_email' }
          format.text { render 'send_contact_email' }
        end
  end

end
