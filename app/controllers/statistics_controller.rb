class StatisticsController < ApplicationController

  include StatisticsHelper
  include ActivitiesHelper

  def index
    @report = report_for_week(2013, 44)
    @statistic_for_days = statistic_for_report(@report)
  end

end
