class IndexController < ApplicationController
  def index
    @description = MessagesDescription.new
  end
end
