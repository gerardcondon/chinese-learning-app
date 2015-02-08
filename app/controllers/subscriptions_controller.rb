class SubscriptionsController < ApplicationController
  respond_to :html

  expose(:subscription, attributes: :subscription_params)

  def create
    subscription.save
    respond_with(subscription)
  end

  def update
    subscription.save
    respond_with(subscription)
  end

  def destroy
  	subscription.destroy
  	redirect_to root_path
  end

	private

	def subscription_params
		params.require(:subscription).permit(:name, :email)
	end
end
