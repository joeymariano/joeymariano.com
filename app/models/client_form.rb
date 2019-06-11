class ClientForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :surname,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :topic
  attribute :message,      :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "JoeyMariano.com Contact Form",
      :to => "joey.michalina.mariano@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
