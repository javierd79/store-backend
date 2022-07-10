class Api::V1::CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render json: @categories, status: :ok
  end

  def show
    # byebug
    @category = Category.find(params[:id].to_i)
    render json: @category, include: "**"
  end

end
