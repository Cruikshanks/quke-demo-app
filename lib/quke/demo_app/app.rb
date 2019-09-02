# frozen_string_literal: true

# This stops the following Sinatra warning appearing when running the test suite
# or the app from bin/console (essentially any non-production environment)
#
# WARNING: If you plan to load any of ActiveSupport's core extensions to Hash,
# be sure to do so *before* loading Sinatra::Application or Sinatra::Base. If
# not, you may disregard this warning.
ENV["SINATRA_ACTIVESUPPORT_WARNING"] = "false"

require "sinatra/base"

module Quke
  module DemoApp
    class App < Sinatra::Base

      get "/" do
        "Hello, world!"
      end
    end
  end
end
