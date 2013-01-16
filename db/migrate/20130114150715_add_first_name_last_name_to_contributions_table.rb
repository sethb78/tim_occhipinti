class AddFirstNameLastNameToContributionsTable < ActiveRecord::Migration
  def change
    add_column :contributions, :ip_address, :string
    add_column :contributions, :first_name, :string
    add_column :contributions, :last_name, :string
  end
end
