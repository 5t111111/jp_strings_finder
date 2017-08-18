module JpStringsFinder
  class FiletypeDetector
    attr_reader :filetype

    def initialize(file_path)
      @filetype =
        case File.extname(file_path)
        when ".rb"
          :ruby
        when ".slim"
          :slim
        else
          raise "Unsupported filetype"
        end
    end
  end
end
