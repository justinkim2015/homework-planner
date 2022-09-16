class Lesson < ApplicationRecord
  validates :rank, :time, :date, presence: true
  has_many :homeworks

  def lesson_info
    "Rank #{rank} on #{date} @ #{time.to_s[10..15]}"
  end
end
