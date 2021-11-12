class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  after_action :authorize_item, except: :index
  before_action :set_item, only: %i[show edit update]

  def index
    @items = policy_scope(Item)
    # * WITH PG
    params[:query] = params[:format] if params[:format].present?
      # @items = @items.global_search(params[:query])
    @items = @items.global_search(params[:query]) if params[:query].present?
      # @items = @items.filter_by_category(params[:category]) if params[:category].present?
    @markers = @items.geocoded.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude,
        info_window: render_to_string(partial: "info_window", locals: { item: item }),
        image_url: helpers.asset_url('marker_clothes')
      }
    end
  end

  def new
    @item = Item.new
  end

  def show
    @review = Review.new
    if @item.reviews.empty?
      @ratings = 0
    else
      @reviews = @item.reviews
      @ratings = (@reviews.sum{|review| review.rating }) / @reviews.length.to_f
    end
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

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def authorize_item
    authorize @item
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :category_id, :photo, :address)
  end
end
