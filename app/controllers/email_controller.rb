class EmailController < ApplicationController
  def create

    binding.pry

    if verify_recaptcha == true
      c = ClientForm.new(:name => params['name'], :surname => params['surname'], :email => params['email'], :topic => params['topic'], :message => params['message'])
      if c.deliver
        flash[:notice] = "Email Sent Successfully."
        redirect_to '/contact'
      else
        flash[:notice] = "Email Failure - Please Try Again."
        redirect_to '/contact'
      end
    else
      flash[:notice] = "Please fill out the captcha - Thanks."
      redirect_to '/contact'
    end

  end # end create
end
