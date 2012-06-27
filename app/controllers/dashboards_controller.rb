class DashboardsController < ApplicationController
  before_filter :authenticate_user!
  layout 'profile'

  def show
  end


end
