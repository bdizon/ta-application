class HomepageController < ApplicationController
  def index
    if user_signed_in?
      if current_user.admin?
        redirect_to "/admin_homepage/index"
      else
        redirect_to "/student_homepage/index"
      end
    end
  end
end
