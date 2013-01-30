class BlogsController < ApplicationController
	 def index
    	@blogs = Blog.find(:all, :order => "created_at DESC")
  	end

	def show
		@full_blog=Blog.find(params[:id])

	end
end
