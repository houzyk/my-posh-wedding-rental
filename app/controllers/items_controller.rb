class ItemsController < ApplicationController
  after_action :authorize_item
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
  end

  # def search
  # end

  private

  def authorize_item
    authorize @item
  end
end
