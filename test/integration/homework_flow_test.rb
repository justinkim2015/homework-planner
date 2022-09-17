require "test_helper"

class HomeworkFlowTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed
  end

  test "can create a new homework" do
    get "/assignments/new"
    assert_response :success

    post "/assignments",
      params: { assignment: { name: "QA/A", length: "32"} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p"
  end
end
