require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views

  describe 'POST /users' do
    it 'create a new user object' do
      post :create, params: { username: 'Mark' }

      assert_equal User.count, 1
    end

    it 'respond with a new user object' do
      post :create, params: { username: 'Mark' }

      expected_response = {
        user: {
          username: 'Mark'
        }
      }

      assert_equal response.body, expected_response.to_json
    end
  end
end
