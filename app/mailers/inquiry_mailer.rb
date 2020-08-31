class InquiryMailer < ApplicationMailer

	def inquiry_confirmation
    @inquiry = params[:inquiry]
    mail(
    	to: @inquiry.email, 
    	subject: 'Ihre Anfrage bei Ji Dok Che'
    	)
  end
	
  def admin_notification
  	@inquiry = params[:inquiry]
  	mail(
  		to: ['stephen.schuez@gmail.com', 'cornelia.schuez@gmail.com'],
  		subject: 'Neue Anfrage auf jidokche.com'
  		)
  end

end