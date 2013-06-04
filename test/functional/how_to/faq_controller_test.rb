require 'test_helper'

module HowTo
  class FaqControllerTest < ActionController::TestCase
    test "should get show" do
      get :show
      assert_response :success
    end
  
  end
end
