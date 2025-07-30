class RankingsController < ApplicationController
  def index
    @rankings = RankingService.generate
  end
end
