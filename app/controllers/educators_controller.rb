class EducatorsController < ApplicationController
  before_action :authenticate_educator!


  def update
    current_educator.update(educator_params)
    redirect_back(fallback_location: root_path) #ir a pag previa
  end

  def educator_params
    params.require(:educator).permit(:avatar, :first_name, :last_name,
    :institution, :description, :city, :country)
  end
end
