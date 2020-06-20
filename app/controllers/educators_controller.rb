class EducatorsController < ApplicationController
  before_action :authenticate_educator!

  def edit
  end

  def update
    current_educator.update(educator_params)
    redirect_back(fallback_location: root_path) #ir a pag previa
  end

  def educator_params
    params.require(:educator).permit(:avatar)
  end
end
