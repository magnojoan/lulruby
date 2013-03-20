class TurnOverReportsController < ApplicationController
	def index
		@turn_over_reports = TurnOverReport.all
	end

	def show
		@turn_over_report = TurnOverReport.find(params[:id])
	end

	def destroy
		@turn_over_report = TurnOverReport.find(params[:id])
		@turn_over_report.destroy

		redirect_to turn_over_reports_path
	end

	def new
		@turn_over_report = TurnOverReport.new
	end

	def create
		 @turn_over_report = TurnOverReport.new(params[:turn_over_report])
    	if @turn_over_report.save
      	redirect_to turn_over_reports_path
    	else
      	render :new
    	end
	end

	def update
		@turn_over_report = TurnOverReport.find(params[:id])
	    if @turn_over_report.update_attributes(params[:turn_over_report])
	      redirect_to turn_over_reports_path
	    else
	      render :edit
	    end
	end

	def edit
		@turn_over_report = TurnOverReport.find(params[:id])
	end

end
