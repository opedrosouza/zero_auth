# frozen_string_literal: true
class HealthCheckController < ApplicationController

  def index
    render json: { message: "I'm alive!" }, status: :ok
  end

end
