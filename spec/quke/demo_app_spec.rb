# frozen_string_literal: true

require "spec_helper"

RSpec.describe Quke::DemoApp do
  describe "VERSION" do
    it "is a version string in the correct format" do
      expect(Quke::DemoApp::VERSION).to be_a(String)
      expect(Quke::DemoApp::VERSION).to match(/\d+\.\d+\.\d+/)
    end
  end
end
