class EnquiriesController < ApplicationController

  def index
    @enquiry = Enquiry.new(params[:enquiry])
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      EnquiryMailer.with(enquiry: @enquiry).enquiry_info.deliver_later
      flash[:notice] = (t 'form.success')
      redirect_to root_path
    else
      respond_to do |format|
        format.html { render 'index' }
      end
    end
  end

  private
  def enquiry_params
    params.require(:enquiry).permit(:firstname, :lastname, :email, :phone_number, :message)
  end

end