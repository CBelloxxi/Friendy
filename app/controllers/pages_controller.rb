class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def impact
  end

  def index
  end

end
