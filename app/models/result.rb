class Result < ApplicationRecord
  belongs_to :player
  belongs_to :tournament

  validates :player_id, uniqueness: { scope: :tournament_id }
  validates :points, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
