class HomeController < ApplicationController
  before_action :authenticate_educator!

  def index
  end
end
