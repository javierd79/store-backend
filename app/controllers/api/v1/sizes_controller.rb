class Api::V1::SizesController < ApplicationController

  # GET /api/v1/size
  def index
    # byebug
    @size = Size.all
    render json: @size
  end

  # GET /api/v1/size/{id}
  def show
    @size = Size.find(params[:id])
    render json: @size, status: :ok
  end
  
end
