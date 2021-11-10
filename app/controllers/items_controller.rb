class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  after_action :authorize_item, except: :index
  before_action :set_item, only: %i[show edit update]

  def index
    @items = policy_scope(Item)
  end

  def new
    @item = Item.new
  end

  def show
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      flash[:success] = "Item successfully created"
      redirect_to item_path(@item)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to item_path(@item)
  end

  # def search
  # end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def authorize_item
    authorize @item
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :category, :photo)
  end
end
