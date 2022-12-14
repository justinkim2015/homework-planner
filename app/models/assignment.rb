class Assignment < ApplicationRecord
  belongs_to :lesson
  validates :name, :length, :lesson_id, presence: true

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

  def self.warning_list
    fin = []
    Assignment.all.each do |assignment|
      fin << assignment.lesson.user_id if assignment.time_remaining <= 7
    end
    fin.each do |user_id|
      HomeworkMailer.with(user_id: user_id).warning_email.deliver_later
    end
  end

  def warning_email
    HomeworkMailer.with(user_id: lesson.user_id, lesson_id: lesson.id, assignment_id: id).warning_email.deliver_now
  end
end
