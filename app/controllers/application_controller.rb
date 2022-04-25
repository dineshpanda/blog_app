class ApplicationController < ActionController::Base

  before_action :find_user
  before_action :authenticate_user!

  def find_user
    user = User.find_by(email: params[:email])
    user.update(last_login: Time.now)
    sign_in(user)
  end
end
