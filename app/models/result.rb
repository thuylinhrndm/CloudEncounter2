class Result
	attr_accessor :title, :link_url, :click_count

	def initialize(title, link_url, click_count = 0)
		@title = title
		@link_url = link_url
		@click_count = click_count
	end
end