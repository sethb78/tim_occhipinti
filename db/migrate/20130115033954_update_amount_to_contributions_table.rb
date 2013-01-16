class UpdateAmountToContributionsTable < ActiveRecord::Migration


  def down
  	add_column :contributions, :amount, :integer
  end
end
