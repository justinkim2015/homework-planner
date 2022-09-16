require "test_helper"

class LessonFlowTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed
  end

  test "can see the home page" do
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

  test 'can edit a lesson' do
    get "/lessons/1/edit/"
    assert_response :success

    patch '/lessons/1',
      params: { lesson: { rank: "3", time: "16:54", date: "2022-09-11"} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select 'p'
  end

  test 'can delete a lesson' do
    delete '/lessons/1'
    assert_response :see_other
    follow_redirect!
    assert_response :success
    assert_select 'h1'
  end
end