require "jp_strings_finder/filetype_detector"
require "jp_strings_finder/ruby_finder"
require "jp_strings_finder/slim_finder"

module JpStringsFinder
  class Finder
    attr_reader :file_path, :filetype

    def initialize(file_path)
      @file_path = file_path
      @filetype = FiletypeDetector.new(file_path).filetype
    end

    def find
      File.open(file_path) do |f|
        finder = filetype_specific_finder.new(f.read)
        finder.find
      end
    end

    private

    def filetype_specific_finder
      @filetype_specific_finder ||=
        case filetype
        when :ruby
          RubyFinder
        when :slim
          SlimFinder
        end
    end
  end
end
