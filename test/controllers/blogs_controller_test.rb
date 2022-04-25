require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    user = users(:one)
    get blogs_url, params: { email: user.email }
    assert_response :success
  end
end
