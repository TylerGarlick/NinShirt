class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  layout 'profile'

  expose(:user) {current_user}

  def show

  end

  def update
    if user.update_attributes(params[:user])
      redirect_to controller: "profiles", action: "show", notice: "Profile was updated successfully!"
    else
      render :show
    end
  end
end
