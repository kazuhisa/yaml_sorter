require 'ya2yaml'
require 'yaml'

class YamlSorter
  def initialize(arg)
    @raw = arg
  end

  def sort
     @raw.sort_by_key.ya2yaml.gsub(/\s$/,"\n")
  end
end