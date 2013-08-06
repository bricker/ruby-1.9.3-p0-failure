require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test 'it renders the user partial' do
    User.create(name: "Some Guy")
    get :index
    assert_template partial: "_user", count: 1
  end
end
