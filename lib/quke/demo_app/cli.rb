# frozen_string_literal: true

require "thor"

module Quke
  module DemoApp
    class Cli < Thor
      desc("execute", "Start the demo app running")
      option(:port, aliases: "-p", desc: "Port to run the app on", default: "4567")
      def execute
        puts "Warming up the Quke Demo App. Hold on!"
        Quke::DemoApp::App.set(port: options[:port])
        Quke::DemoApp::App.run!
      end

      default_task :execute
    end
  end
end
