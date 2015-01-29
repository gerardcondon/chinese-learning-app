class ListsController < ApplicationController
	respond_to :html
	before_action :authenticate_user!

  expose(:lists) { current_user.lists }
  expose(:list, attributes: :list_params)

  def create
    list.save
    respond_with(list)
  end

  def update
    list.save
    respond_with(list)
  end

  def destroy
  	list.destroy
  	redirect_to root_path
  end

	private

	def find_list
		@list = List.find(params[:id])
	end

	def list_params
		params.require(:list).permit(:title, :description, translations_attributes: [:id, :hanzi, :english, :_destroy])
	end
end
