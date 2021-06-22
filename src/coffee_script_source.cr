module CoffeeScript
  module Source
    def self.bundled_path
      File.expand_path("../js/coffee-script.js", __FILE__)
    end

    def self.bundled_version
      "1.12.8"
    end
  end
end
