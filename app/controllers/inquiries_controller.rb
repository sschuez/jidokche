class InquiriesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:new, :create]
	
	def index
		@inquiries = Inquiry.all
	end

	def show
		@inquiry = Inquiry.find(params[:id])
	end

	def new
		@inquiry = Inquiry.new
	end

	def create
		@inquiry = Inquiry.new(inquiry_params)
		
		if @inquiry.save
			mail = InquiryMailer.with(inquiry: @inquiry).inquiry_confirmation
			mail.deliver_now

			mail_2 = InquiryMailer.with(inquiry: @inquiry).admin_notification
			mail_2.deliver_now
			
			flash[:notice] = "Ihre Nachricht wurde erfolgreich übermittelt."
			redirect_to root_path
		else
			render :new
		end	
	end

	def edit
		@inquiry = Inquiry.find(params[:id])
	end

	def update
		@inquiry = Inquiry.find(params[:id])
		@inquiry.update(params[:inquiry])
	end

	def destroy
    @inquiry = inquiry.find(params[:id])
    @inquiry.destroy

    redirect_to inquiries_path
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:email, :subject, :name, :content)
  end
end