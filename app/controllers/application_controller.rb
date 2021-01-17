class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  private

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end
