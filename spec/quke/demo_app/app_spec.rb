# frozen_string_literal: true

require "spec_helper"

module Quke
  module DemoApp
    RSpec.describe App do
      context "/" do
        it "GET displays the page" do
          get "/"

          expect(last_response.body).to include("Welcome to Quke")
        end

        it "GET returns the status 200" do
          get "/"

          expect(last_response).to be_ok
        end
      end

      context "/about" do
        it "GET displays the page" do
          get "/about"

          expect(last_response.body).to include("The about page.")
        end

        it "GET returns the status 200" do
          get "/about"

          expect(last_response).to be_ok
        end
      end

      context "/contact" do
        it "GET displays the page" do
          get "/contact"

          expect(last_response.body).to include("The contact page.")
        end

        it "GET returns the status 200" do
          get "/contact"

          expect(last_response).to be_ok
        end
      end

      context "/cssselector" do
        it "GET displays the page" do
          get "/cssselector"

          expect(last_response.body).to include("rely on using CSS selectors to locate elements")
        end

        it "GET returns the status 200" do
          get "/cssselector"

          expect(last_response).to be_ok
        end
      end
    end
  end
end
