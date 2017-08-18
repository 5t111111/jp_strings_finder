module JpStringsFinder
  class FiletypeDetector
    attr_reader :filetype

    def initialize(file_path)
      @filetype =
        case File.extname(file_path)
        when ".rb"
          :ruby
        when ".erb"
          :erb
        when ".slim"
          :slim
        else
          raise "Unsupported filetype [#{file_path}]".colorize(:red)
        end
    end
  end
end
