class ReviewsController < ApplicationController

  def new
    @image = Image.find(params[:image_id])
    @review = Review.new
  end
  
  def create
    @review = Review.new(params_reviews)
    @image = Image.find(params[:image_id])
    @review.image = @image
    
    if @review.save
      flash[:success] = "Review successfully created"
      redirect_to @image
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  private

  def params_reviews
    params.require(:review).permit(:content, :rating)
  end
  
end
