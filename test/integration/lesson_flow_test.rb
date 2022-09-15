require "test_helper"

class LessonFlowTest < ActionDispatch::IntegrationTest
  test "can see the home page" do
    get "/"
    assert_select "h1"
  end
end
