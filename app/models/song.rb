class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album
  LENGTH = (0..10)
  validates :name, presence: true, uniqueness: true
  validates :minutes, inclusion: {in: LENGTH }
  # validates :album, uniqueness: { scope: :artist }
end
