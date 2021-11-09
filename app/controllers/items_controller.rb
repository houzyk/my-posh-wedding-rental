class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update]
  after_action :authorize_item
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
    @item.update(items_params)
    redirect_to item_path(@item)
  end

  # def search
  # end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def items_params
    params.require(:item).permit(:name, :description, :price, :category)
  end

  def authorize_item
    authorize @item
  end
end
