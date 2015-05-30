class UserMailer < ActionMailer::Base
  default from: "inga.wiegand@gmail.com'"

  def contact_form(email, name, message)
	@message = message
  	mail(:from => email, 
	  		:to => 'inga.wiegand@gmail.com', 
	  		:subject => "A new contact form message from #{name}")
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver
  end

end