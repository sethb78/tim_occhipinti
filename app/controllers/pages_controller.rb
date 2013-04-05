class PagesController < ApplicationController
    def home
        @blog=Blog.last
        @latest_news=NewsArticle.find(:all, :limit => 5, :order => "date DESC")
      	@event=UpcomingEvent.order('event_start ASC').limit(10).find(:all, :conditions => ["event_start between ? and ?", (DateTime.now), (DateTime.now + 2.months)])
        # Comment.order('created_at DESC').limit(5).all
        # @event=UpcomingEvent.order('event_start DESC').find

        @first_carousel_picture=CarouselPicture.order("RANDOM()").first
        @carousel_pictures = CarouselPicture.find(:all, :conditions => ["id != #{@first_carousel_picture.id}"])        
        @video = Video.last
    end

    def media
        @archive_news = NewsArticle.reorder("date DESC").page(params[:page]).per_page(10)
        @blogs = Blog.find(:all, :order => "created_at DESC")
        @link=request.fullpath
    end
end
