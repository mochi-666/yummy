class Public::ReviewsController < ApplicationController

  def new
    @review = Review.new
    @store = Store.find(params[:store_id])
  end

  def show
     @review = Review.find(params[:id])
     @review_comment = ReviewComment.new

  end

  def edit
    @review = Review.find(params[:id])

  end

  def update
    @review = Review.find(params[:id])
    image_params = params[:review][:review_images_images]
    @review.review_images.destroy_all if review_params.dig(1).present?#if文ははstore＿imageに２番目以降に画像があったら今ある画像をを削除
    if @review.update(review_params)
      @store = @review.store
      redirect_to store_path(@store.id)
    else
      render :edit
    end
  end

  def create
    @store = Store.find(params[:review][:store_id])
    @review = current_user.reviews.new(review_params)
    if @review.save!
      redirect_to store_path(@store.id)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    store = @review.store
    @review.destroy
    redirect_to store_path(store.id)
  end


  private

  def review_params
    params.require(:review).permit(:name,:user_id, :title, :store_id,  :text, review_images_images: [], genre_ids: [], scene_ids: [], atmosphere_ids: [])
  end
end
