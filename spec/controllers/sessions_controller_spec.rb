require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe "POST #create" do
    context "with valid params" do
      it "creates a new Session" do
        expect {
          post :create, params: { session: attributes_for(:session) }
        }.to change(Session, :count).by(1)
        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid params" do
      it "returns unprocessable entity status" do
        post :create, params: { session: attributes_for(:session, coach_hash_id: nil) }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
