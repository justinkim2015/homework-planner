class Lesson < ApplicationRecord
  validates :rank, :time, :date, presence: true
  has_many :homework
  accepts_nested_attributes_for :homework

  def info
    "Rank #{rank} on #{date} @ #{time.to_s[10..15]}"
  end
end
