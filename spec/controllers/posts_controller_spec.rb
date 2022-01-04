require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  render_views

describe 'POST/ posts' do
  it 'create a new post object' do
    post :create, params: { title: 'Hello', user_id: 1}

    assert_equal Post.count, 1
  end

  it 'respond with a new post object' do
    post :create, params: { title: 'Hello', user_id: 1}

    expected_response = {
      post: {
        title: 'Hello',
        user_id: 1
      }
    }

    assert_equal response.body, expected_response.to_json
  end
end

end
