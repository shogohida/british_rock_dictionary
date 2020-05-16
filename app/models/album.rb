class Album < ApplicationRecord
  #GENRES = ['Britpop', '90s', 'Mancunian', 'Madchester', 'Progressive', 'Punk']
  has_one_attached :photo
  has_many :songs
  validates :name, presence: true
  #validates :genre, inclusion: { in: GENRES }
end
