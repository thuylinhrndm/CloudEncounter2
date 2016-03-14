require 'data'
class Result
	attr_accessor :title, :link_url, :click_count, :average_rating

	def initialize(title, link_url, click_count = 0, average_rating = 0)
		@title = title
		@link_url = link_url
		@click_count = click_count
		@average_rating = average_rating
	end
end