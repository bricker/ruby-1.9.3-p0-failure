require 'spec_helper'

describe UsersController do
  # Control test to show that the error only occurs 
  # when the `partial` option is used.
  it 'renders the index template' do
    get :index
    response.should render_template 'index'
  end

  # Failing test
  it 'renders the partial for each user' do
    User.create(name: "Some Guy")
    get :index
    response.should render_template partial: 'user'
  end
end
