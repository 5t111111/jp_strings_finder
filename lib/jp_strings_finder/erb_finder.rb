module JpStringsFinder
  class ERBFinder
    attr_reader :src

    def initialize(src)
      @src = src
    end

    # Very very rough implementation for the moment...
    def find
      src.split("\n")
    end
  end
end

