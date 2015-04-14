class Chef
  class Node
    def feature_enabled?(feature)
      features.enabled?(feature)
    end

    def features
      @features ||= Apron::Feature.new(self)
    end
  end
end
