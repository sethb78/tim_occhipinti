class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :name
      t.string :address1
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :occupation
      t.string :employer_name
      t.string :employer_address1
      t.string :employer_address2
      t.string :employer_city
      t.string :employer_state
      t.string :employer_zip
      t.string :amount
      t.string :card_type
      t.date :card_expires_on

      t.timestamps
    end
  end
end
