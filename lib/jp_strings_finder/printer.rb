require "pathname"
require "terminal-table"

module JpStringsFinder
  class Printer
    attr_reader :list

    def initialize(list)
      @list = list
    end

    def print_table
      table = Terminal::Table.new do |t|
        list.each_with_index do |hash, index|
          t.add_row(
            [
              to_relative_path(Dir.pwd, hash[:file]),
              hash[:type].upcase,
              hash[:strings].join("\n")
            ]
          )
          t.add_separator unless index == list.count - 1
        end
      end
      puts table
    end

    private

    def to_relative_path(root, path)
      Pathname.new(path).relative_path_from(Pathname.new(root)).to_s
    end
  end
end
