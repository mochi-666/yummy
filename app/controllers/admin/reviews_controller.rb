class Admin::ReviewsController < ApplicationController

  def show
     @review = Review.find(params[:id])
     @review_comment = ReviewComment.new
  end

  def destroy
    @review = Review.find(params[:id])
    @store = @review.store
    @review.destroy
    redirect_to admin_store_path(@store.id)
  end


  private

  def review_params
    params.require(:review).permit(:name, :title, :store_id,  :text, review_images_images: [], genre_ids: [], scene_ids: [], atmosphere_ids: [])
  end
end
