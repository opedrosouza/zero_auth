# frozen_string_literal: true
require "rails_helper"

RSpec.describe "HealthCheck" do
  describe "GET /check" do
    before { get "/check" }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "returns a message" do
      expect(response.body).to eq({ message: "I'm alive!" }.to_json)
    end
  end

end
