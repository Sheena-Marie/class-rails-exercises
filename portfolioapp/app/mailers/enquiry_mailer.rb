class EnquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.response.subject
  #
  def response(enquiry)
    @enquiry = Enquiry.find(enquiry.id)
    mail to: enquiry.email, subject: 'Thanks for your enquiry!'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.received.subject
  #
  def received(enquiry)
    @enquiry = Enquiry.find(enquiry.id)
    mail to: "sheena.takkenberg@gmail.com", subject: 'An enquiry has been received'
  end
end
