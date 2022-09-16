require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'should be able to access lesson' do
    user = User.first
    assert user.lessons, 'lesson/user association broken'
  end

  # test 'should be able to access homework' do
  #   user = User.first
  #   assert user.lessons[0].homeworks, 'lesson/user/homework association broken'
  # end
end
