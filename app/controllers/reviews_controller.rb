class ReviewsController < ApplicationController
  before_action :set_review, only: [:destroy]

  # POST companies/1/reviews
  def create
    @company = Company.find(params[:company_id])
    @review = @company.reviews.new(review_params)
    @review.save!

    respond_to do |format|
      format.html { redirect_to @company }
      format.js # render reviews/create.js.erb
    end
  end

  # DELETE companies/1/reviews/1
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:review_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:name, :stars, :comment, :company_id)
    end
end
