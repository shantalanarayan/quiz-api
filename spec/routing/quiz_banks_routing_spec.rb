require "rails_helper"

RSpec.describe QuizBanksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quiz_banks").to route_to("quiz_banks#index")
    end


    it "routes to #show" do
      expect(:get => "/quiz_banks/1").to route_to("quiz_banks#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/quiz_banks").to route_to("quiz_banks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quiz_banks/1").to route_to("quiz_banks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quiz_banks/1").to route_to("quiz_banks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quiz_banks/1").to route_to("quiz_banks#destroy", :id => "1")
    end

  end
end
