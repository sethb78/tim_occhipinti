class BlogsController < ApplicationController
	 def index
    	@archive_news = NewsArticle.all(:order => "date DESC")
        @blogs = Blog.find(:all, :order => "created_at DESC")  
    end

	def show
		@full_blog=Blog.find(params[:id])

	end
end
