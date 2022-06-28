class Album < ApplicationRecord
  
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :genre, presence: true
  validates :year, presence: true
end
