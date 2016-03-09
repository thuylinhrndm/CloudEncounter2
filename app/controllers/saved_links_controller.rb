class SavedLinksController < ApplicationController
  def update_link
  	@saved_link = ""
  	if SavedLink.find_by_link_url(params[:link_url].to_s)
  		@saved_link = SavedLink.find_by_link_url(params[:link_url].to_s)
  		@saved_link.click_count += 1
  		@saved_link.save
  	else 
  		@saved_link = SavedLink.create(title: params[:title].to_s, link_url: params[:link_url].to_s, click_count: 1) 
  		@saved_link.save
  	end
  	redirect_to @saved_link.link_url.to_s
  end

  def index
  	@saved_links = SavedLink.all
  end
  
  def update_rating
  	@saved_link = SavedLink.find_or_create_by(link_url: params[:link_url].to_s)
    @saved_link.ratings.build(rating: params[:rating].to_i)
    @saved_link.save
   redirect_to request.referrer, notice: "Thank you for your feedback"
  end
end
