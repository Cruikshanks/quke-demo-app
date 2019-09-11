# frozen_string_literal: true

require "thor"

module QukeDemoApp
  class Cli < Thor
    desc("execute", "Start the demo app running")
    option(:port, aliases: "-p", desc: "Port to run the app on", default: "4567")
    def execute
      puts "Warming up the Quke Demo App. Hold on!"
      QukeDemoApp::App.set(port: options[:port])
      QukeDemoApp::App.run!
    end

    default_task :execute
  end
end
