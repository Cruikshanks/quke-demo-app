# frozen_string_literal: true

require_relative "demo_app/concerns/can_have_search_results"
require_relative "demo_app/app"

module Quke
  module DemoApp
    # The DemoApp namespace
    class Runner
      def self.run(_args = [])
        puts "Hello, you're running your web app from a gem!"
        Quke::DemoApp::App.run!
      end
    end
  end
end
