class ApplicationMailer < ActionMailer::Base
  default to: "info@kanbanapp.com", from: 'info@kanbanapp.com'
  layout 'mailer'
end
