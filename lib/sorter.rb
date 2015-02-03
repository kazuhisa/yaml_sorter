require 'ya2yaml'
require 'yaml'

class Sorter
  def initialize(arg)
    @raw = arg
  end

  def sort
     @raw.sort_by_key.ya2yaml
  end
end