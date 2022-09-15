require "test_helper"

class LessonFlowTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "can see the home page" do
    sign_in users(:one)
    get "/"
    assert_select "h1"
  end
end
