class Lesson < ApplicationRecord
  validates :rank, :time, :date, presence: true
end
