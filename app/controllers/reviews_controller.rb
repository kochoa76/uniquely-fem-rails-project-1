class ReviewsController < ApplicationController

  def index
    @company = Company.find(params[:company_id])
  end

  def new
    @review = Review.new 
  end

  def create
    @review = Review.create(review_params)
    if @review.save
      redirect_to @review
    end
  end

  def show

  end

  def update
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
