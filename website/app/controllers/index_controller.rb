class IndexController < ApplicationController
  def index
    @description = MessageDescription.new
  end
end
