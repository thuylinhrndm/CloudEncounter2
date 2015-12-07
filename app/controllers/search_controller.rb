class SearchController < ApplicationController
  def new
  end

  def results
  	@result = params[:query]
  end

  def test
  	@results = GoogleCustomSearchApi.search("Problem")
  end
end
