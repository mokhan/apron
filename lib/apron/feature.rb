module Apron
  class Feature
    def initialize(features = {})
      @features = features
    end

    def enabled?(feature)
      @features[feature]
    end
  end
end
