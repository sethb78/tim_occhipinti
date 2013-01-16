class UpdateAmountToContributionsTable < ActiveRecord::Migration
  def up
  	remove_column :contributions, :amount, :string
  end

  def down
  	add_column :contributions, :amount, :integer
  end
end
