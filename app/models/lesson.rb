class Lesson < ApplicationRecord
  validates :rank, :time, :date, presence: true
  has_many :assignments
  accepts_nested_attributes_for :assignments

  def info
    "#{time.to_s[10..15]} - #{rank}"
  end
end
