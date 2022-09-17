class Lesson < ApplicationRecord
  validates :rank, :time, :date, presence: true
  has_many :assignments
  accepts_nested_attributes_for :assignments

  def info
    "Rank #{rank} on #{date} @ #{time.to_s[10..15]}"
  end
end
