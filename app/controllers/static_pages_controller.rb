class StaticPagesController < ApplicationController
  expose(:subscription)

  def home
  	if user_signed_in?
      redirect_to :controller=>'lists', :action => 'index'
  	end
  end
  
  def about
    respond_to(:html)
  end
end
