require 'rails_helper'

RSpec.describe "QuizBanks", type: :request do
  describe "GET /quiz_banks" do
    it "works! (now write some real specs)" do
      get quiz_banks_path
      expect(response).to have_http_status(200)
    end
  end
end
