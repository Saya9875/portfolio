class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to item_reviews_path(@review.item)  
    else
      @item = Item.find(params[:id])
      render "items/show"
    end
  end


  private
    
    def review_params
      params.require(:review).permit(:item_id, :score, :review_content)
    end
  
end