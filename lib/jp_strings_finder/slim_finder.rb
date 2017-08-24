module JpStringsFinder
  class SlimFinder
    attr_reader :src

    def initialize(src)
      @src = src
    end

    # Very very rough implementation for the moment...
    def find
      strings = src.split("\n")
      # Remove Slim comments
      strings.reject { |s| s.strip.match?(/^\/[:blank]*/) }
    end
  end
end
