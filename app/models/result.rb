require 'data'
class Result
	attr_reader :title, :link_url, :click_count, :average_rating

	def initialize(title, link_url, click_count = 0, average_rating = nil)
		@title = title
		@link_url = link_url
		@click_count = click_count
		@average_rating = average_rating
	end
end