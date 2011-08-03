require "yaml"

config = YAML.load_file(File.expand_path("../application.yml", __FILE__)) rescue {}
config.each{|k,v| ENV[k] = v }
