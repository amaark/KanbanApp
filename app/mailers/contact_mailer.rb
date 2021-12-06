class ContactMailer < ApplicationMailer

  def contact_email(email, name, subject, message)
    @email = email
    @name = name
    @subject = subject
    @message = message

    mail cc: @email
  end
  
end
