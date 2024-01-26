require 'rails_helper'

RSpec.describe Session, type: :model do
  it "is valid with valid attributes" do
    session = build(:session)
    expect(session).to be_valid
  end

  it "is invalid without coach_hash_id" do
    session = build(:session, coach_hash_id: nil)
    expect(session).to_not be_valid
  end

  it "is invalid without client_hash_id" do
    session = build(:session, client_hash_id: nil)
    expect(session).to_not be_valid
  end

  it "is invalid without start" do
    session = build(:session, start: nil)
    expect(session).to_not be_valid
  end

  it "is invalid without duration" do
    session = build(:session, duration: nil)
    expect(session).to_not be_valid
  end

  it "is invalid with overlapping sessions" do
    existing_session = create(:session)
    new_session = build(:session, coach_hash_id: existing_session.coach_hash_id, start: existing_session.start, duration: existing_session.duration)
    expect(new_session).to_not be_valid
  end
end
