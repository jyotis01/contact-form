require 'rails_helper'

RSpec.describe EnquiryMailer, :type => :mailer do
  describe 'send email on receiving enquiry' do
    let(:valid_attributes) {
      {
        firstname: 'John', 
        lastname: 'Doe',
        phone_number: '9878987690',
        email: 'john@gmail.com',
        message: 'Test Message',
      }
    }
    let(:mail) { 
      value = Enquiry.create! valid_attributes
      EnquiryMailer.with({ enquiry: value }).enquiry_info
    }

    it 'renders the headers' do
      expect(mail.subject).to eq('Enquiry received from John Doe')
      expect(mail.to).to eq(['archangel.test07+00@gmail.com'])
      expect(mail.from).to eq(['archangel.test07@gmail.com'])
    end
  end
end