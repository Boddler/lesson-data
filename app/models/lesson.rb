class Lesson < ApplicationRecord
  belongs_to :scrape
  validates :ls, :date, :day, presence: true
end
