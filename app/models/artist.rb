class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :albums, through: :songs
  YEARS = (1..70)
  validates :name, presence: true, uniqueness: true
  validates :years_active, inclusion: { in: YEARS }
end
