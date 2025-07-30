class RankingService
  def self.generate
    Player.all.map do |player|
      recent_results = player.results
                             .joins(:tournament)
                             .where("tournaments.start_date >= ?", 1.year.ago)
                             .order(points: :desc)
                             .limit(10)

      total_points = recent_results.sum(&:points)

      {
        player: player,
        total_points: total_points
      }
    end.sort_by { |entry| -entry[:total_points]}
  end
end
