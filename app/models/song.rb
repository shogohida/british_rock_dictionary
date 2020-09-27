class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album
  delegate :name, :to => :album, :prefix => true
  LENGTH = (0..10)
  validates :name, presence: true, uniqueness: true
  validates :minutes, inclusion: {in: LENGTH }
end
