class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:notice] = "Registrations are not open yet. Please enter your name and email below and we'll contact you when we're open for business."
    redirect_to root_path
  end

  def create
    flash[:notice] = "Registrations are not open yet. Please enter your name and email below and we'll contact you when we're open for business."
    redirect_to root_path
  end
end