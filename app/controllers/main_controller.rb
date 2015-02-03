class MainController < ApplicationController
  def index
    @text = 'aaa: 123'
  end

  def convert
    yaml = YAML.load(params[:content])
    sorter = Sorter.new(yaml)
    @text = sorter.sort
    render action: :index
  end
end
