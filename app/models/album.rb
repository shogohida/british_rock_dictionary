class Album < ApplicationRecord
  #GENRES = ['Britpop', '90s', 'Mancunian', 'Madchester', 'Progressive', 'Punk']
  has_many :songs
  validates :name, presence: true
  #validates :genre, inclusion: { in: GENRES }
end
