class DonationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :find_donation, only: [:show]
  def show
    @donee = Donee.find(@donation.donee_id)
    @user = User.find(@donation.user_id)
  end

  def new
    @donee = Donee.find(params[:donee_id])
    @donation = Donation.new
  end

  def create

    @donee = Donee.find(params[:donee_id])
    @donation = Donation.new(donation_params)
    @donation.donee = @donee
    @donation.user = current_user
    if @donation.save
      flash[:success] = "Your payment has been successful!"
      redirect_to donee_donation_path(@donation)
    else
      render 'new'
    end
  end
   def monetize
   end

  private

  def donation_params
  params.require(:donation).permit(:price_cents)
  end

  def find_donation
    @donation = Donation.find(params[:id])
  end

end
