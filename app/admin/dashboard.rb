ActiveAdmin::Dashboards.build do
  section "Recent Posts" do
    table_for Blog.order("date desc").limit(5) do
      column :title
      column :date
    end
    strong { link_to "View All Blogs", admin_blogs_path }
  end

    section "Photo Galleries" do
    table_for Gallery.order("created_at desc").limit(5) do
      column :name
      column :description
     end
    strong { link_to "View All Galleries", admin_galleries_path }
  end

  section "Articles" do
    table_for NewsArticle.order("date desc").limit(5) do
      column :title
      column :date
      column :source
    end
    strong { link_to "View All Articles", admin_news_articles_path }
  end
end