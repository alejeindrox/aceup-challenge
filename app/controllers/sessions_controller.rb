class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :update, :destroy]

  def create
    @session = Session.new(session_params)

    if @session.save
      render json: @session, status: :created
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:coach_hash_id, :client_hash_id, :start, :duration)
  end
end
