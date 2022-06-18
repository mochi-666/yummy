class Admin::ReviewsController < ApplicationController

  def show
     @review = Review.find(params[:id])
     @review_comment = ReviewComment.new
  end

  def edit
    @review = Review.find(params[:id])
  end


  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to admin_review_path(params[:id])
  end


  private

  def review_params
    params.require(:review).permit(:name, :title, :store_id,  :text, review_images_images: [], genre_ids: [], scene_ids: [], atmosphere_ids: [])
  end
end
