class ReportsController < ApplicationController
  # before_action :find_report, only: [:show, :new]

  def new
    # @reports = Report.all
    @donee = Donee.find(params[:donee_id])
    @report = Report.new
  end

  def create
    @donee = Donee.find(params[:donee_id])
    @report = Report.new(report_params)
    @report.user = current_user
    @report.donee = @donee
    @report.assistance_type = params[:report][:assistance_type][1]
    if @report.save!
      redirect_to report_path(@report)
    else
      render :new
    end
  end

  def edit
    @report = Report.find(params[:id])
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
    @report = Report.find(params[:id])
    @donee = @report.donee
    @reports = Report.all
    # @user = User.find(@report.user_id)
    @markers = @reports.geocoded.map do |report|
      {
        lat: report.latitude,
        lng: report.longitude,
        report_window: render_to_string(partial: "report_window", locals: { report: report }),
        image_url: helpers.asset_url("person-solid.svg")
      }
    end
    @markers = [@markers.last]
  end

  private

  def report_params
    params.require(:report).permit(:message, :assistance_type, :location,)
  end
end
