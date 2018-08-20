class ReviewsController < ApplicationController

  def index
    @company = Company.find(params[:company_id])
  end

  def new
    @review = Review.new
  end

  def create
    @company = Company.find(params[:company_id])
    @review = @company.reviews.create(review_params)
      @review.user_id = current_user.id
        if @review.save
           redirect_to company_review_path(@review), :notice => "Thank you for submitting your review"
        else
           redirect_to new_company_review, :notice => "boxes can't be blank"
        end
    end

    def show
         @review = Review.find(params[:id])
         redirect_to :controller => 'reviews', :action => 'show'
     end
     def edit
            @company = Company.find(params[:company_id])
            @review = @company.comments.find(params[:id])
        end

    def update
            @company = Company.find(params[:company_id])
            @review = @company.reviews.find(params[:id])
            if @review.update(review_params)
                redirect_to @company
            else
                render 'companies/show'
            end
        end

    def destroy
            @company= Company.find(params[:company_id])
            @review = @company.reviews.find(params[:id])
            if @review.user_id == current_user.id
              @review.delete
              redirect_to @company
            end
          end


  private

  def review_params
    params.require(:review).permit(:user_id, :company_id, :content, :salary, :job_rating, :women_exec_roles, :promo_opps, :recommend )
  end
end
