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
        @title = "Welcome to Quke"
        erb :index
      end

      get "/about" do
        @title = "About"
        erb :about
      end

      get "/contact" do
        @title = "Contact"
        erb :contact
      end

      get "/cssselector" do
        @title = "CSS selector"
        erb :css_selector
      end

      get "/jserror" do
        @title = "JavaScript error"
        @results = "Open your browser's dev tools, specifically the JavaScript"\
                   "console. You should see an error!"
        erb :javascript_error
      end
    end
  end
end
