class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      flash[:notice] = "Review Submitted"
      redirect_to "/admin_homepage/index"
    end
  end

  private
  def review_params
    params.require(:review).permit(:reviewer, :stud_email, :prev_grader, :grader_rating, :recommend, :notes)
  end
end
