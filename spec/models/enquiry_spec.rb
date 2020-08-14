require 'rails_helper'
require 'simplecov'
SimpleCov.start 'rails'

RSpec.describe Enquiry, type: :model do
    subject {
      described_class.new(firstname: 'John',
                          lastname: 'Doe',
                          email: 'test@gmail.com',
                          message: 'Lorem ipsum dolar')
    }
  
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  
    it "is not valid without a firstname" do
      subject.firstname = nil
      expect(subject).to_not be_valid
    end
  
    it "is not valid without a lastname" do
      subject.lastname = nil
      expect(subject).to_not be_valid
    end
  
    it "is not valid without a email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  
    it "is not valid without a message" do
      subject.message = nil
      expect(subject).to_not be_valid
    end
  
  end