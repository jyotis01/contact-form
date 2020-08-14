class EnquiriesController < ApplicationController

  def index
    @enquiry = Enquiry.new(params[:enquiry])
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      respond_to do |format|
        EnquiryMailer.with(enquiry: @enquiry).enquiry_info.deliver_later
        format.html { render 'index', notice: 'Thank you for your message. We will get back to you soon!'}
      end
    else
      respond_to do |format|
        format.html { render 'index', notice: 'Something went wrong! Please try again.'}
      end
    end
  end

  private
  def enquiry_params
    params.require(:enquiry).permit(:firstname, :lastname, :email, :phone_number, :message)
  end

end