class BookingsController < ApplicationController
  before_action: set_booking, only[:show, :destroy]

  def new
    @item = Item.find(params[item_id])
    @booking = Booking.new
  end

  def create
    @item = Item.find(params[item_id])
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.save
    redirect_to item_path(@item)
  end

  def edit
    @item = Item.find(params[item_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params[:booking])
  end

  

  def index
    @bookings = Booking.all
  end

  def show
  end

  def destroy
    @booking.destroy

    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:item_id, :user_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end


end
