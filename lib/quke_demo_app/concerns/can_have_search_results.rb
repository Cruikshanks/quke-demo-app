# frozen_string_literal: true

module QukeDemoApp
  module CanHaveSearchResults

    private

    def search_results
      {
        Capybara: "The capybara (Hydrochoerus hydrochaeris) is a large rodent "\
          "of the genus Hydrochoerus of which the only other extant member is "\
          "the lesser capybara (Hydrochoerus isthmius). The capybara is the "\
          "largest rodent in the world. Close relatives are guinea pigs and "\
          "rock cavies, and it is more distantly related to the agouti, "\
          "chinchillas, and the coypu. Native to South America, the capybara "\
          "inhabits savannas and dense forests and lives near bodies of water. "\
          "It is a highly social species and can be found in groups as large as "\
          "100 individuals, but usually lives in groups of 10-20 individuals. "\
          "The capybara is not a threatened species and is hunted for its meat "\
          "and hide and also for a grease from its thick fatty skin which is "\
          "used in the pharmaceutical trade.",
        Capybara_software: "Capybara is a web-based test automation "\
          "software that simulates scenarios for user stories and automates "\
          "web application testing for behavior-driven software "\
          "development. It is a part of the Cucumber testing framework "\
          "written in the Ruby programming language that simulates various "\
          "aspects of a web browser from the perspective of a real user."
      }
    end
  end
end
