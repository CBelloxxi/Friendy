class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def impact
  end

  def index
    @donees = current_user.donees
  end


  def show
    @user = current_user
    @donee = Donee.find(params[:donee_id])
    @donation_history = Donation.where(user_id: current_user.id).and(Donation.where(donee_id: @donee.id))
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

    @donation = Donation.all
    @order = Order.all
  end
end
