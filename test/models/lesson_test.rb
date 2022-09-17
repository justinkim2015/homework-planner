require "test_helper"

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save lesson without all details' do
    lesson = Lesson.new
    assert_not lesson.save, 'Lesson is saved without all details'
  end

  test 'should be able to access homework' do
    lesson = Lesson.first
    assert lesson.assignments, 'Assignment/Lesson association not working'
  end
end
