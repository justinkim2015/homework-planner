require "test_helper"

class LessonFlowTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "can see the home page" do
    sign_in users(:one)
    get "/"
    assert_select "h1"
  end

  test "can create a new lesson" do
    get "/lessons/new"
    assert_response :success

    post "/lessons",
      params: { lesson: { rank: "3", time: "16:54", date: "2022-09-11"} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p"
  end
end


