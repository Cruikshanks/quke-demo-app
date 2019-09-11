# frozen_string_literal: true

require "spec_helper"

module QukeDemoApp
  # We make use of https://github.com/cucumber/aruba here to allow us to test
  # the CLI for our demo app. Because we are kicking off a long lived process
  # (Sinatra web server) we need someway to kill the process but still
  # capture a result. That's what the `exit_timeout` arg does for us.
  RSpec.describe Cli, type: :aruba, exit_timeout: 2 do
    context "Start the demo app" do
      let(:port_args) { "" }
      before(:each) do
        # We have to set the env var to invoke the simplecov section of our
        # quke_demo_app exe file in order to capture test coverage accurately.
        # set_environment_variable() is a method provided by Aruba, as is
        # run_command
        set_environment_variable("COVERAGE", "true")
        run_command("exe/quke_demo_app #{port_args}")
      end

      it { expect(last_command_started).to be_successfully_executed }
      it { expect(last_command_started).to have_output(/has taken the stage on 4567/) }

      context "and set a custom port" do
        let(:port_args) { "--port 9876" }

        it { expect(last_command_started).to be_successfully_executed }
        it { expect(last_command_started).to have_output(/has taken the stage on 9876/) }
      end
    end
  end
end
