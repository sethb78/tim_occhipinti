class CreateAddProviderUidNameToUserTables < ActiveRecord::Migration
  def down
  	add_column :users, :provider, :string
	add_column :users, :uid, :string 
	
    end
  end
