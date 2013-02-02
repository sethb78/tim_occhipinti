ActiveAdmin.register NewsArticle do
	index do
		column :title
		column :source
		column :date
		column :link
		column :snippet
		default_actions
	end

  
end
