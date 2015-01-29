class TranslationsController < ApplicationController
  respond_to :html
  before_action :authenticate_user!

  expose(:lists) { current_user.lists }
  expose(:list)
  expose(:translations, ancestor: :list)
  expose(:translation, attributes: :translation_params)

  def create
    translation.save
    respond_with(translation)
  end

  def update
    translation.save
    respond_with(translation)
  end

  def destroy
  	translation.destroy
  	redirect_to root_path
  end

	private

	def find_translation
		@translation = Translation.find(params[:id])
	end

	def translation_params
		params.require(:translation).permit(:title, :description)
	end
end
