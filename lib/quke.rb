# frozen_string_literal: true

require "quke/demo_app"

module Quke
  class Runner
    def self.run(_args = [])
      puts "Hello, you're running your web app from a gem!"
      Quke::DemoApp::App.run!
    end
  end
end
