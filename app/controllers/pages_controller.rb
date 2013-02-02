class PagesController < ApplicationController
before_filter :signed_in_user, only: [:admin]
  def home
    @blog=Blog.last
    @latest_news=NewsArticle.find(:all, :limit => 5, :order => "date DESC")
  	@event=UpcomingEvent.find(:all, :conditions => ["event_start between ? and ?", (DateTime.now + 1.day), (DateTime.now + 2.months)], :limit => 5)
    @first_carousel_picture=CarouselPicture.first
    @carousel_pictures = CarouselPicture.find(:all, :conditions => ["id != 1"])
    @video = Video.last
    end
end
