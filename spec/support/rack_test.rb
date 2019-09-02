# frozen_string_literal: true

# Details for this file taken from Sinatra docs
# http://recipes.sinatrarb.com/p/testing/rspec?#label-RSpec
#
# Plus a blog post
# https://rubyplus.com/articles/1831-Sinatra-Basics-Testing-using-RSpec-for-Modular-Sinatra-Application

require "rack/test"
require "rspec"

ENV["RACK_ENV"] = "test"

module RSpecMixin
  include Rack::Test::Methods

  def app
    described_class
  end
end

RSpec.configure { |c| c.include RSpecMixin }
