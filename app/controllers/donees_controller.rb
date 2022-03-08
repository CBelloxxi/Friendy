class DoneesController < ApplicationController

  def index
    if params[:query].present?
      sql_query = " \
        donees.location @@ :query \
        OR donees.first_name @@ :query \
        OR donees.last_name @@ :query \
        "
      @donees = Donee.where(sql_query, query: "%#{params[:query].capitalize}%")
      # @donees = Donee.where(location: params[:query].capitalize)
    else
      @donees = Donee.all
    end
  end

  def show
    @donee = Donee.find(params[:id])
    unless @donee.qr_code
      @donee.qr_code = "#{request.base_url}#{donee_path(@donee)}"
      @donee.save
    end
    @qr_code = RQRCode::QRCode.new(@donee.qr_code).as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      standalone: true,
      module_size: 2
    )
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
    params.require(:donee).permit(:first_name, :last_name, :location, :description, :photo, :qr_code)
  end
end
