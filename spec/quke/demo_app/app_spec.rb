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

      context "/jserror" do
        it "GET displays the page" do
          get "/jserror"

          expect(last_response.body).to include("page with a JavaScript error")
        end

        it "GET returns the status 200" do
          get "/jserror"

          expect(last_response).to be_ok
        end
      end

      context "/request" do
        it "GET displays the page" do
          get "/request"

          expect(last_response.body).to include("checking that the request")
        end

        it "GET returns the status 200" do
          get "/request"

          expect(last_response).to be_ok
        end
      end

      context "/radiobutton" do
        it "GET displays the page" do
          get "/radiobutton"

          expect(last_response.body).to include("elements like radio buttons")
        end

        it "GET returns the status 200" do
          get "/radiobutton"

          expect(last_response).to be_ok
        end

        it "POST to the page displays selected option" do
          post "/radiobutton", "enrollment[organisation_attributes][type]=WasteExemptionsShared::OrganisationType::Partnership"

          expect(last_response.body).to include("You selected <strong>Partnership</strong>")
        end

        it "POST returns the status 200" do
          post "/radiobutton", "enrollment[organisation_attributes][type]=WasteExemptionsShared::OrganisationType::Partnership"

          expect(last_response).to be_ok
        end
      end
    end
  end
end
