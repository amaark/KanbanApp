# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  
  def contact_email
    ContactMailer.contact_email("amaar@mail.com", "Amaar Khan", "New Message", @message = "Hello")
  end
  
end
