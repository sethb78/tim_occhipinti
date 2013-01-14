class AddLegalNoticeToContributionsTable < ActiveRecord::Migration
  def change
  	add_column :contributions, :legal_notice, :boolean
  end
end
