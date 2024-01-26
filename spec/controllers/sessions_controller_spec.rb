require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe "POST #create" do
    context "with valid params" do
      it "creates a new Session" do
        expect {
          post :create, params: { session: { coach_hash_id: "unique_coach_id", client_hash_id: "unique_client_id", start: DateTime.now, duration: 60 } }
        }.to change(Session, :count).by(1)
        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid params" do
      it "returns unprocessable entity status" do
        post :create, params: { session: { coach_hash_id: nil, client_hash_id: "unique_client_id", start: DateTime.now, duration: 60 } }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
