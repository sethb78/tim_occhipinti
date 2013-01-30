class NewsArticlesController < ApplicationController
	 def index
    	@archive_news = NewsArticle.all(:order => "date DESC")
  	end

	
end
