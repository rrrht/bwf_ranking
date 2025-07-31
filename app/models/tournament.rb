class Tournament < ApplicationRecord
  has_many :results

  validates :name, :grade, :start_date, presence: true
end
