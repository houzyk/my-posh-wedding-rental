class ItemsController < ApplicationController
  after_action :authorize_item, except: :index

  def index
    @items = policy_scope(Item)
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
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


  # def search
  # end

  private

  def authorize_item
    authorize @item
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :category)
  end
end
