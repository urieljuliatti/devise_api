# frozen_string_literal: true

require 'rails_helper'

# rubocop:disable Metrics/BlockLength
RSpec.describe 'Registrations', type: :request do
  let(:user) { create :user }
  let(:valid_attributes) { attributes_for :user }

  describe 'POST /create' do
    it 'creates a new User' do
      expect do
        post api_user_registration_path, params: valid_attributes
      end.to change(User, :count).by(1)
    end
  end

  describe 'PUT /update' do
    let(:new_name) { Faker::Name.name }

    it 'updates the user' do
      put api_user_registration_path,
          params: { name: new_name }, headers: user.create_new_auth_token, as: :json
      user.reload
      expect(user.name).to eq(new_name)
      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq('application/json; charset=utf-8')
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the user' do
      user
      expect do
        delete api_user_registration_path, headers: user.create_new_auth_token, as: :json
      end.to change(User, :count).by(-1)
    end
  end
end
