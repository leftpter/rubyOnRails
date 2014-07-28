class IndexController < ApplicationController
  def index
    @description = MessagesDescription.new
    @results = SearchResults.new
    unless params['search'].nil?
      @results.setData
    end
  end
end
