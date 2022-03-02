class ReportsController < ApplicationController
  before_action :find_report, only: [:show]
  def edit
    @reports = Report.all
    @donee = Donee.find(params[:id])
    @markers = @reports.geocoded.map do |report|
      {
        lat: report.latitude,
        lng: report.longitude,
        report_window: render_to_string(partial: "report_window", locals: { report: report }),
        image_url: helpers.asset_url("person-solid.svg")
      }
    end
  end

  def new
    @reports = Report.new
  end

  def update
    @report = Report.find(params[:id])
    if @report.update(report_params)
      redirect_to report_path(@report)
    else
      render :new
    end
  end

  def show
    @donee = Donee.find(@report.donee_id)
    @user = User.find(@report.user_id)
  end

  private

  def report_params
    params.require(:report).permit(:message, :assistance_type, :location)
  end

  def find_report
    Donee.find(params[:id])
  end
end
