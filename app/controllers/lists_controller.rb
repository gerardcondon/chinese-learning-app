class ListsController < ApplicationController

	def index
		@lists = List.order(:title)
	end

	private

	def find_list
		@list = List.find(params[:id])
	end

	def list_params
		params.require(:list).permit(:title, :description)
	end
end
