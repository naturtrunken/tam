class StatisticsController < ApplicationController

  include StatisticsHelper
  include ActivitiesHelper

  def index
    @report = report_for_week(2013, 44)
  end

end
