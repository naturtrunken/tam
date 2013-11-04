class StatisticsController < ApplicationController

  include StatisticsHelper
  include ActivitiesHelper

  def index

    @available_weeks = []
    0.upto(9) do |i|
      @available_weeks.push((Date.today - i.week).cweek)
    end

    if params[:week]
      # TODO input validation
      @current_week = params[:week].to_i
    else
      @current_week = Date.today.cweek
    end

    @available_years = []
    0.upto(3) do |i|
      @available_years.push((Date.today - i.year).year)
    end

    if params[:year]
      # TODO input validation
      @current_year = params[:year].to_i
    else
      @current_year = Date.today.year
    end

    @report = report_for_week(@current_year, @current_week)
    @statistic_for_days = statistic_for_report(@report)
  end

end
