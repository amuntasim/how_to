require_dependency "how_to/application_controller"

module HowTo
  class FaqController < ApplicationController
    before_filter :authorise_how_to_view!

    def show
    end
  end
end
