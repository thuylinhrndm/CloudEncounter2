class SavedLink < ActiveRecord::Base
    has_many :ratings
    
    def average_rating
        total_amount = ratings.inject(0) {|sum, num| sum += num}
        total_items = ratings.count
        total_amount/total_items.to_f
    end
end
