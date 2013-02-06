class PagesController < ApplicationController
    def home
        @blog=Blog.last
        @latest_news=NewsArticle.find(:all, :limit => 5, :order => "date DESC")
      	@event=UpcomingEvent.find(:all, :conditions => ["event_start between ? and ?", (DateTime.now - 1.day), (DateTime.now + 2.months)], :limit => 5)
        @first_carousel_picture=CarouselPicture.order("RANDOM()").first
        @carousel_pictures = CarouselPicture.all
        @video = Video.last
    end

    def media
    	@archive_news = NewsArticle.all(:order => "date DESC")
        @blogs = Blog.find(:all, :order => "created_at DESC")
        @link=request.fullpath
    end
end
