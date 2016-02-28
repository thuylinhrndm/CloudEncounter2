require 'result'
class Data
	def self.parse(results)
		result_set = []
		results.items.each do |result|
			#if link is already saved in database return stored link
			# add stored link to result set inside Result object
			# else add unsaved link to to result set inside Result object
			item = SavedLink.find_by_link_url(result.link.to_s) ? SavedLink.find_by_link_url(result.link.to_s) : Result.new(result.title, result.link.to_s)
			result_set << item
		end
		return result_set # return the result set
	end
end