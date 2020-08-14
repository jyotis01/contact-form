require 'rails_helper'

RSpec.describe EnquiriesController, type: :controller do
  
  let(:valid_attributes) {
    {
      firstname: 'John', 
      lastname: 'Doe',
      email: 'john@gmail.com',
      message: 'Test Message',
    }
  }

  let(:invalid_attributes) {
    {
      firstname: '', 
      lastname: '',
      email: '',
      message: '',
    }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
      it "returns a successful response" do
        Enquiry.create! valid_attributes
        get :index, params: {}
        expect(response).to be_successful
      end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "adds a new Enquiry" do
        expect {
          post :create, params: { enquiry: valid_attributes }
        }.to change(Enquiry, :count).by(1)
      end

      it "redirects to the index page" do
        post :create, params: { enquiry: valid_attributes }
        expect(response).to redirect_to(root_url)
      end
    end

    context "with invalid parameters" do
      it "does not add a new Enquiry" do
        expect {
          post :create, params: { enquiry: invalid_attributes }
        }.to change(Enquiry, :count).by(0)
      end

      it "renders the contact for with errors" do
        post :create, params: { enquiry: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

end