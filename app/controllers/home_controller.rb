class HomeController < ApplicationController
  def index
    if current_user.role == 'patient'
      redirect_to doctors_path
    else
      redirect_to patients_path
    end
  end
end