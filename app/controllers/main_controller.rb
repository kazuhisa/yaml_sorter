class MainController < ApplicationController
  def index
    @text = DEFAULT_YAML
  end

  def convert
    yaml = YAML.load(params[:content])
    sorter = Sorter.new(yaml)
    @text = sorter.sort
  rescue Psych::SyntaxError => e
    @error_message = e.message
    @error = true
    @text = params[:content]
  ensure
    render action: :index
  end

  DEFAULT_YAML = <<EOS
---
ccc: 789
bbb: 456
aaa: 123
ddd:
  fff: 999
  eee: 888
EOS
end
