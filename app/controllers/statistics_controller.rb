class StatisticsController < ApplicationController

  def index
    @report = []
    @report.push(['Test', [0, 0, 0, 0, 0, 5, 0]])

  end

end
