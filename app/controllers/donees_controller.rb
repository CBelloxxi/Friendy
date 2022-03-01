class DoneesController < ApplicationController
  def index
    @donees = Donee.all
  end

  def show
    @donee = Donee.find(params[:id])
  end

  def new
    @donee = Donee.new
  end

  def create
    @donee = Donee.new(donee_params)
    @donee.user = current_user
    if @donee.save
      redirect_to donee_path(@donee)
    else
      render :new
    end
  end

  def edit
    @donee = Donee.find(params[:id])
  end

  def update
    @donee = Donee.find(params[:id])
    if @donee.update(donee_params)
      redirect_to donee_path(@donee)
    else
      render :new
    end
  end

  def destroy
    @donee = Donee.find(params[:id])
    if @donee.destroy
      redirect_to donees_path(@donee)
    else
      render :index
    end
  end

  private

  def donee_params
    params.require(:donee).permit(:first_name, :last_name, :description)
  end
end
