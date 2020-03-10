class EmailController < ApplicationController
  def create

    # verify captcha with http request
    # if request is good do the following
    
    url = 'https://api.spotify.com/v1/search?type=artist&q=tycho'
    response = HTTParty.get(url)
    response.parsed_response

    binding.pry

    c = ClientForm.new(:name => params['name'], :surname => params['surname'], :email => params['email'], :topic => params['topic'], :message => params['message'])
    if c.deliver
      flash[:notice] = "Email Sent Successfully."
      redirect_to '/contact'
    else
      flash[:notice] = "Email Failure - Please Try Again."
      redirect_to '/contact'
    end
  end
end
