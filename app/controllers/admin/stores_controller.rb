class Admin::StoresController < ApplicationController

  def index
    @stores = Store.page(params[:page]).per(4)
    @search = Store.ransack(params[:q])
    @store_search = @search.result(distinct: true).page(params[:page]).per(4)


    # if params[:q].nil? || (params[:q][:name_cont].blank? && params[:q][:area_cont].blank?)
    #   #検索されていないとき
    #   @stores = Store.page(params[:page]).per(5)
    # else

    #   name = []
    #   unless params[:q][:name_cont].blank?
    #     #name検索されたとき
    #     name += Store.ransack(name_cont: params[:q][:name_cont]).result(distinct: true).pluck(:name)
    #   end
    #   unless params[:q][:area_cont].blank?
    #     #area検索されたとき
    #     name += Store.ransack(area_cont: params[:q][:area_cont]).result(distinct: true).pluck(:name)
    #   end
    #   #検索結果から重複を取り除いて取得する
    #   @stores = Store.where(name: name.uniq).page(params[:page]).per(5)
    # end

    # @search = Store.ransack(params[:q])

  end

  def create
    @store = Store.new(store_params)
    if @store.save!
      redirect_to admin_store_path(@store.id)
    else
      render :new
    end
  end

  def new
    @store = Store.new
  end

  def show
    @store = Store.find(params[:id])
    @reviews = @store.reviews.page(params[:page]).per(4)
  end

  def edit
    @store = Store.find(params[:id])
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to admin_stores_path
  end

  def update
    @store= Store.find(params[:id])
    image_params = params[:store][:store_images_images]
    @store.store_images.destroy_all if image_params.dig(1).present?#if文ははstore＿imageに２番目以降に画像があったら今ある画像をを削除
    if @store.update(store_params)
      redirect_to admin_store_path(@store.id)
    else
      render :edit
    end
  end

  private

  def store_params
    params.require(:store).permit(:name, :genre_id, :scene_id, :atmosphere_id, :explanation, :area, store_images_images: [], genre_ids: [])
  end


end
