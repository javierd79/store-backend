class Api::V1::UsersController < ApplicationController
  before_action :authorize_request
  before_action :find_user, except: %i[create index]

  # GET /api/v1/users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  # GET /api/v1/users/{cedula}
  def show
    render json: @user, status: :ok
  end

  # POST /api/v1/users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end 

  # PUT /api/v1/users/{cedula}
  def update
    unless @user.update(user_params)
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/users/{cedula}
  def destroy
    @user.destroy
    if @user.destroyed?
      render json: { message: 'User deleted' }, status: :ok
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def find_user
    @user = User.find_by(cedula: params[:cedula])
  rescue ActiveRecord::RecordNotFound
    render json: { errors: 'User not found' }, status: :not_found
  end

  def user_params 
    params.permit(
      :name, :lastname, :cedula, :email, :phone_number, :password, :password_confirmation
    )
  end
end
