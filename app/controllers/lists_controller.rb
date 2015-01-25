class ListsController < ApplicationController

  expose(:lists) { List.order(:title) }
  expose(:list, attributes: :list_params)

  def create
    if list.save
      redirect_to(list)
    else
      render :new
    end
  end

	private

	def find_list
		@list = List.find(params[:id])
	end

	def list_params
		params.require(:list).permit(:title, :description)
	end
end
