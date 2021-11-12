class ReviewsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @review = Review.new(review_params)
    @review.item = @item
    if @review.save
      redirect_to item_path(@item , anchor: "review-#{@review.id}")
    else
      render "items/show"
    end
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
