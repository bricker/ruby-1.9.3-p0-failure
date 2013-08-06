require 'spec_helper'

describe UsersController do
  it 'renders the index template' do
    get :index
    response.should render_template 'index'
  end

  it 'renders the partial for each user' do
    User.create(name: "Some Guy")
    get :index
    response.should render_template partial: 'user'
  end
end
