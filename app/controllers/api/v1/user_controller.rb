class Api::V1::UserController < Api::V1::BaseController

  def create
    user = User.create!(user_params)
    respond_with user
  end

  def update
    user = User.find(params[:user_id])
    user.update(user_params)
  end

  def destroy
    User.find(params[:user_id]).destroy
  end

  private

    def user_params
      params.require(:user).permit(:first_name,
                                   :last_name,
                                   :email,
                                   :slack_name,
                                   :cohort)
    end

end
