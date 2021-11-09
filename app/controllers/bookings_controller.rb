class BookingsController < ApplicationController
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

  private

  def booking_params
    params.require(:booking).permit(:item_id, :renter_id)
  end
end
