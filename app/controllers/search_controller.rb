class SearchController < ApplicationController
  def new
  end

  def results
  	@result = params[:query]
  end

  def test
  	@results = GoogleCustomSearch.search("Problem")
  	puts @results
  	@results
  end
end
