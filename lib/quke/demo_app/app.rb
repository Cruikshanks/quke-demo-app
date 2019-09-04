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
      include CanHaveSearchResults

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

      get "/radiobutton" do
        @title = "Radio button"
        erb :radio_button
      end

      post "/radiobutton" do
        @title = "Radio button"
        @selection = params["enrollment"]["organisation_attributes"]["type"]
        @result = @selection.match(/OrganisationType::([^"]*)/)[1]

        erb :radio_button
      end

      get "/request" do
        @title = "Request details"
        @results = request.env
        erb :request
      end

      get "/search" do
        @title = "Search"
        erb :search
      end

      post "/search" do
        @title = "Search"
        @query = params["search_input"]

        @results = search_results if @query.casecmp("capybara").zero?

        erb :search
      end
    end
  end
end
