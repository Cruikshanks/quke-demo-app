# frozen_string_literal: true

require "spec_helper"

RSpec.describe QukeDemoApp do
  describe "VERSION" do
    it "is a version string in the correct format" do
      expect(QukeDemoApp::VERSION).to be_a(String)
      expect(QukeDemoApp::VERSION).to match(/\d+\.\d+\.\d+/)
    end
  end
end
