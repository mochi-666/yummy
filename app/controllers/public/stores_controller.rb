class Public::StoresController < ApplicationController
  def index
    @stores = Store.page(params[:page]).per(5)
    @reviews = Review.all
    @scenes = Scene.all
    @search = Store.ransack(params[:q])
    @stores_search = @search.result(distinct: true).page(params[:page]).per(5)
  end

  def show
    @store = Store.find(params[:id])
    @reviews = @store.reviews.page(params[:page]).per(5)
#    @reviess = Review.where(store_id: @store.id)
    @review_comment = ReviewComment.new

  end


  private

  def store_params
    params.require(:store).permit(:name, :genre_id, :scene_id, :atmosphere_id, :explanation, :area, store_images_images: [], genre_ids: [], review_images_images: [])
  end
end
