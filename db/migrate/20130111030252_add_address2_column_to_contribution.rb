class AddAddress2ColumnToContribution < ActiveRecord::Migration
  def change
  	        add_column :contributions, :address2, :string

  end
end
