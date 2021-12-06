class HomeController < ApplicationController
  def home
  end

  def contact
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    subject = params[:subject]
    message = params[:message]

    if name.blank? || email.blank? || subject.blank? || message.blank?
      flash[:alert] = I18n.t('home.request_contact.blank_fields')
      redirect_to contact_path
    else
      ContactMailer.contact_email(email, name, subject, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
      redirect_to root_path
    end

  end
  
end
