class Api::V1::UsersController < ApiController
  def index
    @users = User.all

    if @users.count(:all) > 0
      render
    else
      render json: { message: 'No Users Found' }, status: 200
    end
  end

  def create
    @user = User.last

    if @user.save
      render
    else
      render json: {
        message: 'Validation Failed',
        errors: @user.errors.full_messages
      }, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
