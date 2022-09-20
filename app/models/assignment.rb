class Assignment < ApplicationRecord
  belongs_to :lesson

  def self.names
    [
      ['Daily A', 'Daily A'],
      ['Daily B', 'Daily B'],
      ['ABC & Calendar ', 'ABC & Calendar'],
      ['Kanji English', 'Kanji English'],
      ['Q&A Set A', 'Q&A Set A'],
      ['Pera-pera Daruma', 'Pera-pera Daruma'],
      ['Q&A Set B', 'Q&A Set B'],
      ['Opposites A', 'Opposites A'],
      ['Tryalogs', 'Tryalogs'],
      ['Opposites B', 'Opposites B']
    ]
  end

  def info
    "#{name} - Has #{time_remaining} days remaining"
  end

  def time_remaining
    total_time_days = length * 7
    time_passed_seconds = Time.now - created_at
    time_passed_days = time_passed_seconds / 60 / 60 / 24
    (total_time_days - time_passed_days).round
  end
end
