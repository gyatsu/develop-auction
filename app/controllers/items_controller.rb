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
    @item = Item.new(params[:item_params])
    @item.save
    # redirect_to items_path(@item)
    redirect_to "/items#{@item.id}"
  end
  def edit
    @item = Item.find(params[:id])
  end
  def update
    @item = Item.find(params[:id])
    @item.update_attributes(item_params)
    @item.save
    redirect_to "/items/#{@item.id}"

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
end
