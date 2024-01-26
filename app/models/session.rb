class Session < ApplicationRecord
  validates :coach_hash_id, :client_hash_id, :start, :duration, presence: true
  validate :no_overlapping_sessions, :start_and_duration_present

  private

  def no_overlapping_sessions
    errors.add(:base, 'Overlapping sessions are not allowed.') if overlapping_sessions.present?
  end

  def start_and_duration_present
    errors.add(:base, 'Both start and duration must be present.') if start.nil? || duration.nil?
  end

  def overlapping_sessions
    return Session.none if start.nil? || duration.nil?

    existing_sessions = Session.where(coach_hash_id: coach_hash_id).where.not(id: id)

    existing_sessions.select do |session|
      existing_start_time = Time.parse(session.start.to_s)
      existing_end_time = existing_start_time + session.duration.minutes
      new_start_time = Time.parse(start.to_s)
      new_end_time = new_start_time + duration.minutes

      existing_start_time < new_end_time && new_start_time < existing_end_time
    end
  end
end