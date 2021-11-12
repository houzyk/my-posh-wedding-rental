class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy]
  before_action :set_bookings, except: :index
  before_action :set_item, only: %i[new create]
  # after_action :authorize_booking, expect: :index

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
    authorize @booking
  end

  def edit
    authorize @booking
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
    authorize @booking
  end

  def index
    @bookings = policy_scope(Booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:item_id, :user_id, :comment, :start, :return)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  # def authorize_booking
  #   authorize @booking
  # end
end
