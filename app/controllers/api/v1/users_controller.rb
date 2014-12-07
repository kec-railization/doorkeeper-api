class Api::V1::UsersController < ApiController
  include ActionController::MimeResponds

  def index
    @users = User.all

    respond_to do |format|
      format.json { render :json => @users }
    end
  end
end
