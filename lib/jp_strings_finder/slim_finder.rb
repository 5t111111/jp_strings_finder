module JpStringsFinder
  class SlimFinder
    attr_reader :src

    def initialize(src)
      @src = src
    end

    def find
      raise NotImplementedError
    end
  end
end
