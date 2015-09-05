class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  def show
    @item = Item.find(params[:id])
  end
  def new
    @item = Item.new
  end
  def create
    @item = Item.new(params[:item])
    @item.save
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :details,
      :price,
      :seller_id,
      :mail,
      :image_url)
end
