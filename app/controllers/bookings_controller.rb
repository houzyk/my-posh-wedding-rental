class BookingsController < ApplicationController
  # before_action :set_booking, only: %i[show destroy]

  def new
    @item = Item.find(params[:item_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.user = current_user
    if @booking.save
      redirect_to item_path(@item)
    else
      render :new
    end
    authorize @booking
  end

  # def edit
  #   @item = Item.find(params[item_id])
  #   @booking = Booking.find(params[:id])
  # end

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update(params[:booking])
  # end



  def index
    @bookings = policy_scope(Booking)
  end

  # def show
  # end

  # def destroy
  #   @booking.destroy

  #   redirect_to bookings_path
  # end

  private

  def booking_params
    params.require(:booking).permit(:item_id, :user_id, :comment)
  end

  # def set_booking
  #   @booking = Booking.find(params[:id])
  # end


end
