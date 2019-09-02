# frozen_string_literal: true

require "spec_helper"

module Quke
  module DemoApp
    RSpec.describe App do
      it "should allow accessing the home page" do
        get "/"

        expect(last_response).to be_ok
        expect(last_response.body).to eq("Hello, world!")
      end
    end
  end
end
