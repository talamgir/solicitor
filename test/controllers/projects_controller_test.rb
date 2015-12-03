require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  test "should get organizer" do
    get :organizer
    assert_response :success
  end

end
