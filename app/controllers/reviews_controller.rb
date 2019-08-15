class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :create, :update, :destroy]

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
  @review = Review.new(params_review)
  @review.restaurant = @restaurant
  # redirect_to restaurant_path(@restaurant)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'new'
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def params_review
    params.require(:review).permit(:content, :rating)
  end

end
