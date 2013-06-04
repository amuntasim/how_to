module HowTo
  class ApplicationController < ::ApplicationController
    helper_method :can_manage_how_to?

    def can_manage_how_to?
      self.send(HowTo.config.permitted_to_manage_how_to.to_sym) rescue false
    end

    def authorise_how_to_manage!
      self.send(HowTo.config.authorization_method_to_manage.to_sym) rescue false
    end

    def authorise_how_to_view!
      self.send(HowTo.config.authorization_method_to_view.to_sym) rescue true
    end

  end
end
