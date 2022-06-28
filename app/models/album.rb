class Album < ApplicationRecord
  validates :name, presence: true
  validates :genre, presence: true
  validates :year, presence: true
end
