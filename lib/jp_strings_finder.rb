require "jp_strings_finder/version"
require "jp_strings_finder/config"
require "jp_strings_finder/finder"
require "jp_strings_finder/printer"

module JpStringsFinder
  def self.find_in(file_path)
    Finder.new(file_path).find
  end
end
