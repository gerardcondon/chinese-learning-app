class ListsController < ApplicationController
	respond_to :html

  expose(:lists) { List.order(:title) }
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
		params.require(:list).permit(:title, :description)
	end
end
