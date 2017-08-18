require 'ripper'

module JpStringsFinder
  class RubyFinder
    class RipperCustom < Ripper
      attr_reader :strings

      def initialize(src)
        super(src)
        @strings = []
      end

      def on_tstring_content(str)
        @strings << str
      end
    end

    attr_reader :src

    def initialize(src)
      @src = src
    end

    def find
      ripper = RipperCustom.new(src)
      ripper.parse
      ripper.strings
    end
  end
end
