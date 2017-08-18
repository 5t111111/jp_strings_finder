require "yaml"

module JpStringsFinder
  class Config
    DEFAULT = {
      "exclude" => []
    }

    attr_reader :config, :exclude_files

    def initialize(config_file: nil)
      if config_file
        loaded_config = YAML.load_file(config_file)
        @config = DEFAULT.merge(loaded_config)
      else
        @config = DEFAULT
      end

      @exclude_files = @config["exclude"].inject([]) do |acc, elem|
        acc << Dir.glob(elem).map { |e| File.expand_path(e) }
        acc.flatten.uniq
      end
    end

    def exclude?(file_path)
      @exclude_files.include?(file_path)
    end
  end
end
