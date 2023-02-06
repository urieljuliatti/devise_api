# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Confirmations', type: :request do
  let(:user) { create(:user) }

  describe 'POST /create' do
    it 'resends the confirmation' do
      post api_user_confirmation_path, params: { email: user.email }
      expect(response).to have_http_status(:ok)
    end
  end
end
