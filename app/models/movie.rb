class Movie < ApplicationRecord
  has_many :bookmarks
  # validates_presence_of :title
  validates :title, uniqueness: true, presence: true
  validates :overview, uniqueness: true, presence: true
end
