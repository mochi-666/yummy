class Admin::SearchesController < ApplicationController

  def index
    @search = Store.ransack(params[:q])
    @stores = @search.result(distinct: true)
  end

end
