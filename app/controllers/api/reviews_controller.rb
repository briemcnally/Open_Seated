class Api::ReviewsController < ApplicationController
  before_action :require_logged_in!

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_params)
    @review.author_id = current_user.id

    if @review.save
      render 'api/reviews/show'
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def update
    @review = current_user.reviews.find(params[:id])

    if @review.update_attribures(review_params)
      render :show
    else
      render json: @review.errors.full_messages, status: 404
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy!
  end

  private

  def review_params
    params.require(:review).permit(:restaurant_id, :body, :food, :service,
              :ambience, :value, :rating)
  end
end
