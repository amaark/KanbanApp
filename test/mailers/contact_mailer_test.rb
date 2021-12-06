require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "should return contact email" do
    mail = ContactMailer.contact_email("amaar@mail.com", "Amaar Khan", "New Message", @message = "Hello")

    assert_equal ['info@kanbanapp.com'], mail.to
    assert_equal ['info@kanbanapp.com'], mail.from
  end
end