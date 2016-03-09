require 'result'
class Data
	def self.parse(results)
		result_set = []
		results.items.each do |result|
			
			# item = SavedLink.find_by_link_url(result.link.to_s) ? SavedLink.find_by_link_url(result.link.to_s) : Result.new(result.title, result.link.to_s)
			if SavedLink.find_by_link_url(result.link.to_s)
				link = SavedLink.find_by_link_url(result.link.to_s)
				item = Result.new link.title, link.link_url, link.click_count, link.average_rating
				result_set << item
			else
				item = Result.new result.title.to_s, result.link.to_s
				result_set << item
			end
		end
		result_set # return the result set
	end
end