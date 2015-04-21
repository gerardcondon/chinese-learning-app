class SubscriptionsController < ApplicationController
  respond_to :html

  expose(:subscription, attributes: :subscription_params)

  def create
    subscription.save
    render :show
  end

	private

	def subscription_params
		params.require(:subscription).permit(:name, :email)
	end
end
