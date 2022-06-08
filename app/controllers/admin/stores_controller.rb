class Admin::StoresController < ApplicationController

  def index
    @stores = Store.page(params[:page]).per(5)
  end

  def create
    @store = Store.new(store_params)
    if @store.save
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
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store.find(params[:id])
    if @store.update(params[:id])
      redirect_to admin_store_path(@store.id)
    else
      render :edit
    end
  end

  private

  def store_params
    params.require(:store).permit(:name, :gernre_id, :tag_id, :scene_id, :atmosphere_id, :explanatio, store_images_images: [])
  end


end
