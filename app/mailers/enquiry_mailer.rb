
class EnquiryMailer < ApplicationMailer

  default from: ENV['MAILER_EMAIL']
  default to: ENV['MAILER_EMAIL_TO']

  def enquiry_info
    @enquiry = params[:enquiry]
    @subject = 'Enquiry received from ' + @enquiry.firstname + ' ' + @enquiry.lastname
    mail(subject: @subject)
  end

end