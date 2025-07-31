class Player < ApplicationRecord
  has_many :results

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true, format: { with: /\A[A-Z]{3}\z/ }
end
